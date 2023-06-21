.class Lcom/kingroot/kinguser/bex$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bex;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blL:Lcom/kingroot/kinguser/bex;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bex;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/bex$3;->blL:Lcom/kingroot/kinguser/bex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$3;->blL:Lcom/kingroot/kinguser/bex;

    iget-object v1, p0, Lcom/kingroot/kinguser/bex$3;->blL:Lcom/kingroot/kinguser/bex;

    invoke-static {v1}, Lcom/kingroot/kinguser/bex;->b(Lcom/kingroot/kinguser/bex;)Lcom/kingroot/common/utils/ui/ImageViewDot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bex;->a(Lcom/kingroot/kinguser/bex;Landroid/view/View;)V

    .line 93
    return-void
.end method
