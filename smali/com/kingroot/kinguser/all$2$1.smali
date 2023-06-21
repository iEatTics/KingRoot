.class Lcom/kingroot/kinguser/all$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/all$2;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axR:Lcom/kingroot/kinguser/all$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/all$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/all$2$1;->axR:Lcom/kingroot/kinguser/all$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/all$2$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/all$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/kingroot/kinguser/all$2$1;->yz:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/all$2$1;->axR:Lcom/kingroot/kinguser/all$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/all$2;->axQ:Lcom/kingroot/kinguser/all;

    invoke-static {v0}, Lcom/kingroot/kinguser/all;->a(Lcom/kingroot/kinguser/all;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/all$2$1;->axR:Lcom/kingroot/kinguser/all$2;

    iget-object v2, v2, Lcom/kingroot/kinguser/all$2;->axP:Lcom/kingroot/kinguser/all$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/all$a;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/all$2$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/all$2$1$1;-><init>(Lcom/kingroot/kinguser/all$2$1;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method
