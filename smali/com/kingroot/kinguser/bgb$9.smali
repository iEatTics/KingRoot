.class Lcom/kingroot/kinguser/bgb$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb;->abv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic boE:Lcom/kingroot/kinguser/bgb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$9;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$9;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->d(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$9;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->h(Lcom/kingroot/kinguser/bgb;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bgb$9;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v2}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$9;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->i(Lcom/kingroot/kinguser/bgb;)Lcom/kingroot/kinguser/bfx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfx;->notifyDataSetChanged()V

    .line 320
    return-void
.end method
