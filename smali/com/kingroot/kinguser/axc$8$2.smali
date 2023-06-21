.class public Lcom/kingroot/kinguser/axc$8$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aXy:Lcom/kingroot/kinguser/axc$8;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$8;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$8$2;->aXy:Lcom/kingroot/kinguser/axc$8;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/kinguser/page/CommonSettingsPage$3$2$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/page/CommonSettingsPage$3$2$1;-><init>(Lcom/kingroot/kinguser/axc$8$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 418
    return-void
.end method
