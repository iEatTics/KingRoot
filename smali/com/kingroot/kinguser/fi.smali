.class public Lcom/kingroot/kinguser/fi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ag:Ljava/lang/String;

.field public final ah:Ljava/lang/String;

.field public final pR:Ljava/lang/String;

.field public final pS:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/kingroot/kinguser/fi;->ag:Ljava/lang/String;

    .line 430
    iput-object p2, p0, Lcom/kingroot/kinguser/fi;->pS:Ljava/lang/Integer;

    .line 431
    iput-object p3, p0, Lcom/kingroot/kinguser/fi;->ah:Ljava/lang/String;

    .line 432
    iput-object p4, p0, Lcom/kingroot/kinguser/fi;->pR:Ljava/lang/String;

    .line 433
    return-void
.end method


# virtual methods
.method public ah()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/fi;->pS:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/fi;->pS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
