.class Lcom/kingroot/kinguser/bbe$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic beM:Lcom/kingroot/kinguser/bbe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$4;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 434
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 435
    invoke-static {}, Lcom/kingroot/kinguser/ajr;->zu()V

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;->zf()V

    .line 439
    return-void
.end method
