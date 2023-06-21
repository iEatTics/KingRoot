.class Lcom/kingroot/kinguser/awu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awu;->y(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVx:Lcom/kingroot/kinguser/awu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awu;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingroot/kinguser/awu$2;->aVx:Lcom/kingroot/kinguser/awu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/awu$2;->aVx:Lcom/kingroot/kinguser/awu;

    invoke-static {v0}, Lcom/kingroot/kinguser/awu;->a(Lcom/kingroot/kinguser/awu;)V

    .line 135
    :cond_0
    return-void
.end method
