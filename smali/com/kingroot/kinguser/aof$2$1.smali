.class Lcom/kingroot/kinguser/aof$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aof$2;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFm:Lcom/kingroot/kinguser/aof$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aof$2;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingroot/kinguser/aof$2$1;->aFm:Lcom/kingroot/kinguser/aof$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/aof$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/kingroot/kinguser/aof$2$1;->yz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/aof$2$1;->aFm:Lcom/kingroot/kinguser/aof$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aof$2;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-static {v0}, Lcom/kingroot/kinguser/aof;->a(Lcom/kingroot/kinguser/aof;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aof$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/aof$2$1;->aFm:Lcom/kingroot/kinguser/aof$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aof$2;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-static {v0}, Lcom/kingroot/kinguser/aof;->a(Lcom/kingroot/kinguser/aof;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aof$2$1;->yz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
