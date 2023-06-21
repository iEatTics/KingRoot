.class Lcom/kingroot/kinguser/ank$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ank$2;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBr:Lcom/kingroot/kinguser/ank$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ank$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/kingroot/kinguser/ank$2$1;->aBr:Lcom/kingroot/kinguser/ank$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/ank$2$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/ank$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 716
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$2$1;->aBr:Lcom/kingroot/kinguser/ank$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank$2;->this$0:Lcom/kingroot/kinguser/ank;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank;->aBm:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$2$1;->yz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$2$1;->aBr:Lcom/kingroot/kinguser/ank$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank$2;->this$0:Lcom/kingroot/kinguser/ank;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank;->aBm:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$2$1;->yz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 719
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$2$1;->aBr:Lcom/kingroot/kinguser/ank$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank$2;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->q(Lcom/kingroot/kinguser/ank;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amc;->Ig()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$2$1;->aBr:Lcom/kingroot/kinguser/ank$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank$2;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->q(Lcom/kingroot/kinguser/ank;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amc;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/amc;->d(Landroid/graphics/Bitmap;)V

    .line 721
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$2$1;->aBr:Lcom/kingroot/kinguser/ank$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank$2;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->r(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/alc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alc;->notifyItemChanged(I)V

    .line 724
    :cond_0
    return-void
.end method
