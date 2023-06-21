.class Lcom/kingroot/kinguser/cfh$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfh;->U(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDr:I

.field final synthetic cbV:Lcom/kingroot/kinguser/cfh;

.field final synthetic ccb:Ljava/util/List;

.field final synthetic ccc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$5;->cbV:Lcom/kingroot/kinguser/cfh;

    iput-object p2, p0, Lcom/kingroot/kinguser/cfh$5;->ccb:Ljava/util/List;

    iput p3, p0, Lcom/kingroot/kinguser/cfh$5;->aDr:I

    iput-object p4, p0, Lcom/kingroot/kinguser/cfh$5;->ccc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$5;->ccb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ccg;

    .line 1325
    iget v2, p0, Lcom/kingroot/kinguser/cfh$5;->aDr:I

    iget-object v3, p0, Lcom/kingroot/kinguser/cfh$5;->ccc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/ccg;->T(ILjava/lang/String;)V

    goto :goto_0

    .line 1327
    :cond_0
    return-void
.end method
