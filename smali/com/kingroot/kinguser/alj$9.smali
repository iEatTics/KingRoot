.class Lcom/kingroot/kinguser/alj$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field final synthetic axl:Lcom/kingroot/kinguser/alj$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/kinguser/alj$a;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$9;->axi:Lcom/kingroot/kinguser/alj;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$9;->axl:Lcom/kingroot/kinguser/alj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$9;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$9;->axl:Lcom/kingroot/kinguser/alj$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/kingroot/kinguser/alj$9$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/alj$9$1;-><init>(Lcom/kingroot/kinguser/alj$9;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/kingroot/kinguser/alj$9$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alj$9$2;-><init>(Lcom/kingroot/kinguser/alj$9;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
