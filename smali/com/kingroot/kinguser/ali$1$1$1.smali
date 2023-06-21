.class Lcom/kingroot/kinguser/ali$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ali$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awZ:Lcom/kingroot/kinguser/ali$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ali$1$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingroot/kinguser/ali$1$1$1;->awZ:Lcom/kingroot/kinguser/ali$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/ali$1$1$1;->awZ:Lcom/kingroot/kinguser/ali$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ali$1$1;->awY:Lcom/kingroot/kinguser/ali$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ali$1;->awW:Lcom/kingroot/kinguser/ali$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ali$a;->afU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ali$1$1$1;->awZ:Lcom/kingroot/kinguser/ali$1$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/ali$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    return-void
.end method
