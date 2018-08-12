<?php
if (file_exists(dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php')) {
    /** @noinspection PhpIncludeInspection */
    require_once dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php';
} else {
    require_once dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/config.core.php';
}
/** @noinspection PhpIncludeInspection */
require_once MODX_CORE_PATH . 'config/' . MODX_CONFIG_KEY . '.inc.php';
/** @noinspection PhpIncludeInspection */
require_once MODX_CONNECTORS_PATH . 'index.php';

$input = $modx->getChunk($_REQUEST['modal'],$_REQUEST);

$maxIterations= (integer) $modx->getOption('parser_max_iterations', null, 10);
$modx->getParser()->processElementTags('', $input, false, false, '[[', ']]', array(), $maxIterations);
$modx->getParser()->processElementTags('', $input, true, true, '[[', ']]', array(), $maxIterations);

echo json_encode(array(
	'modal'=> $input
));