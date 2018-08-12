<?php
/** @var modX $modx */
/** @var array $scriptProperties */

$tpl = $modx->getOption('button', $scriptProperties, 'ajaxmodal.button.tpl');
unset($scriptProperties['button']);
if(empty($scriptProperties['modal'])) $scriptProperties['modal'] = 'ajaxmodal.modal.tpl'; 
return $modx->getChunk($tpl, array('params'=>json_encode($scriptProperties)));
