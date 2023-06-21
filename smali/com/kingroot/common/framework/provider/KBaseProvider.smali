.class public abstract Lcom/kingroot/common/framework/provider/KBaseProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private Hm:Landroid/net/Uri;

.field private Hn:Lcom/kingroot/kinguser/tm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hm:Landroid/net/Uri;

    .line 23
    new-instance v0, Lcom/kingroot/kinguser/tm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/tm;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->jQ()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/tl;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 184
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/kingroot/kinguser/tl;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 143
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1, v0, p2, p3}, Lcom/kingroot/kinguser/tl;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 91
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/tl;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 109
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/tl;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jQ()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hm:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/tm;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hm:Landroid/net/Uri;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hm:Landroid/net/Uri;

    return-object v0
.end method

.method public abstract jb()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/kingroot/kinguser/tl;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->jb()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/tm;->e(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 72
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/tl;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/provider/KBaseProvider;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/kingroot/common/framework/provider/KBaseProvider;->Hn:Lcom/kingroot/kinguser/tm;

    .line 163
    invoke-virtual {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/tm;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/tl;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/kingroot/kinguser/tl;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
