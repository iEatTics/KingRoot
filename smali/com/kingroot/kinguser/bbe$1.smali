.class Lcom/kingroot/kinguser/bbe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbe;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aQe:Landroid/content/Intent;

.field final synthetic beL:Landroid/content/Context;

.field final synthetic beM:Lcom/kingroot/kinguser/bbe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$1;->beM:Lcom/kingroot/kinguser/bbe;

    iput-object p2, p0, Lcom/kingroot/kinguser/bbe$1;->aQe:Landroid/content/Intent;

    iput-object p3, p0, Lcom/kingroot/kinguser/bbe$1;->beL:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$1;->aQe:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    sget-object v1, Lcom/kingroot/kinguser/bbe;->beB:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$1;->beM:Lcom/kingroot/kinguser/bbe;

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe$1;->beL:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbe;->a(Lcom/kingroot/kinguser/bbe;Landroid/content/Context;)V

    .line 130
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bbe;->beC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$1;->beM:Lcom/kingroot/kinguser/bbe;

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe$1;->beL:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbe;->b(Lcom/kingroot/kinguser/bbe;Landroid/content/Context;)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0

    .line 122
    :cond_2
    sget-object v1, Lcom/kingroot/kinguser/bbe;->beD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$1;->beM:Lcom/kingroot/kinguser/bbe;

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe$1;->beL:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbe;->c(Lcom/kingroot/kinguser/bbe;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
