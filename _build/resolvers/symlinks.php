<?php
/** @var xPDOTransport $transport */
/** @var array $options */
/** @var modX $modx */
if ($transport->xpdo) {
    $modx =& $transport->xpdo;

    $dev = MODX_BASE_PATH . 'Extras/AjaxModal/';
    /** @var xPDOCacheManager $cache */
    $cache = $modx->getCacheManager();
    if (file_exists($dev) && $cache) {
        if (!is_link($dev . 'assets/components/ajaxmodal')) {
            $cache->deleteTree(
                $dev . 'assets/components/ajaxmodal/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_ASSETS_PATH . 'components/ajaxmodal/', $dev . 'assets/components/ajaxmodal');
        }
        if (!is_link($dev . 'core/components/ajaxmodal')) {
            $cache->deleteTree(
                $dev . 'core/components/ajaxmodal/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_CORE_PATH . 'components/ajaxmodal/', $dev . 'core/components/ajaxmodal');
        }
    }
}

return true;