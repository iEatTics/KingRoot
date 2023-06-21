.class Lcom/kingroot/kinguser/bei$2;
.super Lcom/kingroot/kinguser/alz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/alz",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/kingroot/kinguser/thread/StaticEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ble:Lcom/kingroot/kinguser/bei;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bei;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/bei$2;->ble:Lcom/kingroot/kinguser/bei;

    invoke-direct {p0}, Lcom/kingroot/kinguser/alz;-><init>()V

    return-void
.end method


# virtual methods
.method public Ha()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bei$2;->ble:Lcom/kingroot/kinguser/bei;

    invoke-static {v0}, Lcom/kingroot/kinguser/bei;->a(Lcom/kingroot/kinguser/bei;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Hc()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bei$2;->Zs()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public Zs()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/thread/StaticEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/bea$a;->values()[Lcom/kingroot/kinguser/bea$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 54
    invoke-virtual {v4}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/kingroot/kinguser/thread/StaticEntity;

    iget-object v6, p0, Lcom/kingroot/kinguser/bei$2;->ble:Lcom/kingroot/kinguser/bei;

    invoke-static {v6}, Lcom/kingroot/kinguser/bei;->b(Lcom/kingroot/kinguser/bei;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kingroot/kinguser/thread/StaticEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-object v1
.end method
