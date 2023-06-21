.class Lcom/kingroot/kinguser/alj$4;
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

.field final synthetic axj:Lcom/kingroot/common/uilib/ShapedImageView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/common/uilib/ShapedImageView;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$4;->axi:Lcom/kingroot/kinguser/alj;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$4;->axj:Lcom/kingroot/common/uilib/ShapedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lcom/kingroot/kinguser/alj$4$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/alj$4$1;-><init>(Lcom/kingroot/kinguser/alj$4;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 473
    new-instance v0, Lcom/kingroot/kinguser/alj$4$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alj$4$2;-><init>(Lcom/kingroot/kinguser/alj$4;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method
