.class Lcom/kingroot/kinguser/ber$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ber;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blx:Lcom/kingroot/kinguser/ber;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ber;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kingroot/kinguser/ber$3;->blx:Lcom/kingroot/kinguser/ber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$3;->blx:Lcom/kingroot/kinguser/ber;

    iget-object v1, p0, Lcom/kingroot/kinguser/ber$3;->blx:Lcom/kingroot/kinguser/ber;

    invoke-static {v1}, Lcom/kingroot/kinguser/ber;->c(Lcom/kingroot/kinguser/ber;)Lcom/kingroot/common/utils/ui/ImageViewDot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ber;->a(Lcom/kingroot/kinguser/ber;Landroid/view/View;)V

    .line 104
    return-void
.end method
