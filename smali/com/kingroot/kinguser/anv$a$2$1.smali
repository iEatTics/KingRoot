.class Lcom/kingroot/kinguser/anv$a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anv$a$2;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEw:Lcom/kingroot/kinguser/anv$a$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anv$a$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$a$2$1;->aEw:Lcom/kingroot/kinguser/anv$a$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/anv$a$2$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/anv$a$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$2$1;->aEw:Lcom/kingroot/kinguser/anv$a$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$2;->aEv:Lcom/kingroot/kinguser/anv$a$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$a;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/anv$a$2$1;->yz:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$2$1;->aEw:Lcom/kingroot/kinguser/anv$a$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$2;->aEv:Lcom/kingroot/kinguser/anv$a$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/anv$a$a;->aEy:Lcom/kingroot/common/uilib/ShapedImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/anv$a$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    :cond_0
    return-void
.end method
