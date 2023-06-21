.class public Lcom/kingroot/kinguser/agp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private amV:Lcom/kingroot/kinguser/ago;

.field private mInterface:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/ago;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/ago;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agp$a;->amV:Lcom/kingroot/kinguser/ago;

    .line 107
    iput-object p2, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public static a(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/agp;
    .locals 2

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/agp$a;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/agp$a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public E(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/agp$a;->amV:Lcom/kingroot/kinguser/ago;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 123
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public fz(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/agp$a;->amV:Lcom/kingroot/kinguser/ago;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 139
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 140
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    .line 142
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 146
    return v0

    :cond_0
    move v0, v7

    .line 140
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public vV()Ljava/lang/String;
    .locals 6

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/agp$a;->amV:Lcom/kingroot/kinguser/ago;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingroot/kinguser/agp$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 157
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 158
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 160
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
