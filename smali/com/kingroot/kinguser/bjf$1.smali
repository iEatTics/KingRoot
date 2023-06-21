.class Lcom/kingroot/kinguser/bjf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjf;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwy:Lcom/kingroot/kinguser/bjf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjf;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/bjf$1;->bwy:Lcom/kingroot/kinguser/bjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bjf$1;->bwy:Lcom/kingroot/kinguser/bjf;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjf$1;->bwy:Lcom/kingroot/kinguser/bjf;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjf;->a(Lcom/kingroot/kinguser/bjf;)Lcom/kingroot/common/utils/ui/ImageViewDot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjf;->a(Lcom/kingroot/kinguser/bjf;Landroid/view/View;)V

    .line 45
    return-void
.end method
