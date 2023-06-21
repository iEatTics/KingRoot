.class public final Lcom/kingroot/kinguser/lx;
.super Lcom/kingroot/kinguser/jf;
.source "SourceFile"


# instance fields
.field private vv:Ljava/lang/String;

.field private vw:Ljava/lang/String;

.field private vx:Ljava/lang/String;

.field private vy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/hh;Z)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p7}, Lcom/kingroot/kinguser/jf;-><init>(Ljava/lang/String;IILcom/kingroot/kinguser/hh;)V

    .line 27
    iput-object p3, p0, Lcom/kingroot/kinguser/lx;->vv:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/kingroot/kinguser/lx;->vx:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/kingroot/kinguser/lx;->vy:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p8}, Lcom/kingroot/kinguser/lx;->b(Z)V

    .line 33
    return-void
.end method

.method private static bn(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static en()Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bN()Z

    move-result v0

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ey()Z

    move-result v1

    .line 64
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic aZ()Lcom/kingroot/kinguser/hh;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->aZ()Lcom/kingroot/kinguser/hh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Z)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/jf;->b(Z)V

    return-void
.end method

.method public bridge synthetic ba()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->ba()Z

    move-result v0

    return v0
.end method

.method public ct()I
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vv:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/lx;->bn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const v0, 0x6000009

    .line 58
    :goto_0
    return v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/lx;->en()Z

    move-result v1

    .line 43
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/lx;->bn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const v0, 0x600000c

    goto :goto_0

    .line 47
    :cond_1
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 48
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    const v0, 0x600000a

    goto :goto_0

    .line 53
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 755 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/lx;->vv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 54
    if-eqz v1, :cond_3

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 755 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 58
    :cond_3
    const v0, 0x6000001

    goto :goto_0
.end method

.method public d(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/jf;->d(Landroid/os/Parcel;)V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public dV()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/kingroot/kinguser/lx;->vv:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/kingroot/kinguser/lx;->vw:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->getType()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/lx;->vv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lx;->vx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lx;->vy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
