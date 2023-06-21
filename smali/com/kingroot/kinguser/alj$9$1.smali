.class Lcom/kingroot/kinguser/alj$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$9;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axm:Lcom/kingroot/kinguser/alj$9;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$9;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$9$1;->axm:Lcom/kingroot/kinguser/alj$9;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$9$1;->axm:Lcom/kingroot/kinguser/alj$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$9;->axl:Lcom/kingroot/kinguser/alj$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    return-void
.end method
