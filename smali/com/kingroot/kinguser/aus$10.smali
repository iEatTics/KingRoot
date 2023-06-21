.class Lcom/kingroot/kinguser/aus$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 522
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 524
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18863

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 525
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->dG(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/aus;->a(Lcom/kingroot/kinguser/aus;I)I

    .line 531
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v1}, Lcom/kingroot/kinguser/aus;->b(Lcom/kingroot/kinguser/aus;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbv;->hT(I)V

    .line 532
    new-instance v0, Lcom/kingroot/kinguser/aus$10$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aus$10$1;-><init>(Lcom/kingroot/kinguser/aus$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method
