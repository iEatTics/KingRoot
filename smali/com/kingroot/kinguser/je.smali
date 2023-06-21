.class public abstract Lcom/kingroot/kinguser/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/lp;


# instance fields
.field private final sR:Lcom/kingroot/kinguser/ne;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/kingroot/kinguser/ne;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/ne;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/ne;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ne;->a(Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ne;->a(Ljava/util/Set;)V

    .line 85
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/ne;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public final getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ne;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ne;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ne;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-wide/16 v0, 0x0

    .line 63
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ne;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/ne;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/je;->sR:Lcom/kingroot/kinguser/ne;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ne;->bE(Ljava/lang/String;)V

    .line 80
    return-void
.end method
