<?php

class Output{
	function __construct($data, $returnType, $callback){
		$outData = "";
		switch($returnType){
			case "json":
				$outData = $this->generateJSON($data);
				break;
			default:
				$outData = $this->generateXML($data);
		}
		if(empty($callback)){
			echo $outData;
		}else{
			echo "$callback($outData);";
		}
	}
	
	function generateJSON($data){
		header("Content-Type: application/json");
		return json_encode($data);
	}
	
	function generateXML($markers){
		$writer = new XMLWriter();
		//lets store our XML into the memory so we can output it later
		$writer->openMemory();
		//lets also set the indent so its a very clean and formatted XML
		$writer->setIndent(true);
		//now we need to define our Indent string,which is basically how many blank spaces we want to have for the indent
		$writer->setIndentString("	");
		//Lets start our document,setting the version of the XML and also the encoding we gonna use
		//XMLWriter->startDocument($string version, $string encoding);
		$writer->startDocument("1.0", "UTF-8");
		//lets start our main element,lets call it "XML"
		$writer->startElement("markers");
		
		header("Content-type: text/xml");
		
		// Iterate through the rows, adding XML nodes for each
		for ($i=0, $len = count($markers); $i < $len; $i++){
			$row = $markers[$i];
			// ADD TO XML DOCUMENT NODE
			$writer->startElement("marker");
			$writer->writeAttribute("name", $row['name']);
			$writer->writeAttribute("address", $row['address']);
			$writer->writeAttribute("lat", $row['lat']);
			$writer->writeAttribute("lng", $row['lng']);
			$writer->writeAttribute("type", $row['type']);
			$writer->endElement();
		}
		
		$writer->endElement();
		//close our document
		$writer->endDocument();
		
		//lets then echo our XML;
		return $writer->outputMemory();
	}
}

?>