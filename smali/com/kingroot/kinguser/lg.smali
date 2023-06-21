.class final Lcom/kingroot/kinguser/lg;
.super Lcom/kingroot/kinguser/lf;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/lf;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 40
    return-void
.end method

.method public static ba(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;
    .locals 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/kingroot/kinguser/nf;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/lg;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/lg;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/lr;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/lr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/bd;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 166
    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v3}, Lcom/kingroot/kinguser/lr;->d(Landroid/os/Parcel;)V

    .line 171
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v0

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 172
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    if-lez v5, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 178
    :goto_0
    if-ge v1, v5, :cond_1

    .line 179
    :try_start_1
    invoke-static {v4}, Lcom/king/uranus/aV;->f(Landroid/os/Parcel;)Lcom/king/uranus/bd;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 186
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 190
    :goto_1
    if-nez v0, :cond_2

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 194
    :cond_2
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 186
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 188
    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 183
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method public ae(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 141
    if-gez p1, :cond_0

    .line 160
    :goto_0
    return v1

    .line 143
    :cond_0
    const/4 v0, 0x1

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move v1, v0

    .line 160
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move v0, v1

    .line 158
    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public af(I)Lcom/king/uranus/bd;
    .locals 6

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 200
    const/4 v0, 0x0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 206
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 208
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-static {v2}, Lcom/king/uranus/aV;->f(Landroid/os/Parcel;)Lcom/king/uranus/bd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 215
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v3

    .line 215
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 227
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v0

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public d(Lcom/kingroot/kinguser/ll;)Z
    .locals 5

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-interface {p1, v1}, Lcom/kingroot/kinguser/ll;->d(Landroid/os/Parcel;)V

    .line 240
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v0

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    return v0

    .line 242
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public dO()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 128
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v3

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVersion()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v3

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public h(ILjava/lang/String;)Z
    .locals 5

    .prologue
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 62
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    return v0

    .line 64
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->dN()Landroid/os/IBinder;

    move-result-object v0

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    :goto_1
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
