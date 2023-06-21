.class Lcom/kingroot/kinguser/axu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->aG(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$3;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$3;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Landroid/view/View;)V

    .line 430
    return-void
.end method
