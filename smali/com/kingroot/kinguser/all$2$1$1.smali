.class Lcom/kingroot/kinguser/all$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/all$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axS:Lcom/kingroot/kinguser/all$2$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/all$2$1;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/all$2$1$1;->axS:Lcom/kingroot/kinguser/all$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/all$2$1$1;->axS:Lcom/kingroot/kinguser/all$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/all$2$1;->axR:Lcom/kingroot/kinguser/all$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/all$2;->axP:Lcom/kingroot/kinguser/all$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/all$a;->ajH:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/all$2$1$1;->axS:Lcom/kingroot/kinguser/all$2$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/all$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    return-void
.end method
