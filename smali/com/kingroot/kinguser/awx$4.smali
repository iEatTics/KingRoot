.class Lcom/kingroot/kinguser/awx$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awx;->b(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVY:Lcom/kingroot/kinguser/awx;

.field final synthetic aWb:Ljava/lang/String;

.field final synthetic aWc:Z

.field final synthetic ayt:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awx;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kingroot/kinguser/awx$4;->aVY:Lcom/kingroot/kinguser/awx;

    iput p2, p0, Lcom/kingroot/kinguser/awx$4;->ayt:I

    iput-object p3, p0, Lcom/kingroot/kinguser/awx$4;->aWb:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/kingroot/kinguser/awx$4;->aWc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$4;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v0}, Lcom/kingroot/kinguser/awx;->e(Lcom/kingroot/kinguser/awx;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$4;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v0}, Lcom/kingroot/kinguser/awx;->e(Lcom/kingroot/kinguser/awx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awx$a;

    .line 198
    iget v2, p0, Lcom/kingroot/kinguser/awx$4;->ayt:I

    iget v3, v0, Lcom/kingroot/kinguser/awx$a;->type:I

    if-ne v2, v3, :cond_2

    .line 199
    iget-object v2, p0, Lcom/kingroot/kinguser/awx$4;->aWb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/awx$a;->jW(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;

    .line 200
    iget-boolean v2, p0, Lcom/kingroot/kinguser/awx$4;->aWc:Z

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/awx$a;->dn(Z)Lcom/kingroot/kinguser/awx$a;

    goto :goto_0
.end method
