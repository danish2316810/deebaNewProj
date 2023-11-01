

using { app.danishCDS.CDSViews } from '../db/cdsView';

service CDSService  @(path:'/CDSService') {
  entity danCdsView as projection on CDSViews.danCdsView;
}
