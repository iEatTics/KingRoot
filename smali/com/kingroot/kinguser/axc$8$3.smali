.class Lcom/kingroot/kinguser/axc$8$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXy:Lcom/kingroot/kinguser/axc$8;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$8;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$8$3;->aXy:Lcom/kingroot/kinguser/axc$8;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 427
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method
