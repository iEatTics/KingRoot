.class public abstract Lcom/kingroot/kinguser/aqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aqs$a;
    }
.end annotation


# instance fields
.field private aLs:I

.field private aLt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/aqs$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final aLu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;>;"
        }
    .end annotation
.end field

.field protected aLv:Z

.field protected aLw:Z

.field protected aLx:I

.field protected aLy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/kingroot/kinguser/aqs;->aLs:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLu:Ljava/util/List;

    .line 33
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aqs;->aLv:Z

    .line 36
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aqs;->aLw:Z

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/aqs;->aLx:I

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/aqs;->aLy:I

    return-void
.end method

.method private MY()Lcom/kingroot/kinguser/aqs$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLt:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs$a;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/aqy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqs;->MX()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/aqs;->aLs:I

    sub-int/2addr v0, v1

    .line 176
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aqy;->MK()I

    move-result v1

    .line 178
    if-ge v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqs;->MX()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/aqs;->aLs:I

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqs;->MY()Lcom/kingroot/kinguser/aqs$a;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1, p1, v0}, Lcom/kingroot/kinguser/aqs$a;->a(Lcom/kingroot/kinguser/aqy;I)V

    .line 192
    :cond_0
    return-void

    .line 184
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/aqs;->aLs:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/aqs;->aLs:I

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public LY()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 57
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->LY()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public abstract ME()Ljava/lang/String;
.end method

.method public abstract MF()Ljava/lang/String;
.end method

.method public declared-synchronized MJ()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aqs;->aLw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    monitor-exit p0

    return v4

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 128
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqs;->MY()Lcom/kingroot/kinguser/aqs$a;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    invoke-interface {v2, p0, v0}, Lcom/kingroot/kinguser/aqs$a;->a(Lcom/kingroot/kinguser/aqs;Lcom/kingroot/kinguser/aqy;)V

    .line 133
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    if-eqz v2, :cond_1

    .line 136
    invoke-interface {v2, p0, v0}, Lcom/kingroot/kinguser/aqs$a;->b(Lcom/kingroot/kinguser/aqs;Lcom/kingroot/kinguser/aqy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->MJ()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Au()Z

    move-result v3

    if-nez v3, :cond_4

    .line 149
    iget v3, p0, Lcom/kingroot/kinguser/aqs;->aLx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kingroot/kinguser/aqs;->aLx:I

    .line 153
    :cond_4
    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v2, p0, v0}, Lcom/kingroot/kinguser/aqs$a;->b(Lcom/kingroot/kinguser/aqs;Lcom/kingroot/kinguser/aqy;)V

    goto :goto_1

    .line 158
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aqs;->aLw:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public abstract MS()Ljava/lang/String;
.end method

.method public abstract MT()Ljava/lang/String;
.end method

.method public abstract MU()Ljava/lang/String;
.end method

.method public MV()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/aqs;->aLu:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-object v0
.end method

.method public MW()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/kingroot/kinguser/aqs;->aLs:I

    return v0
.end method

.method protected MX()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x14

    return v0
.end method

.method public MZ()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 227
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized My()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aqs;->aLv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    monitor-exit p0

    return v4

    .line 70
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqs;->MY()Lcom/kingroot/kinguser/aqs$a;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v1, p0}, Lcom/kingroot/kinguser/aqs$a;->c(Lcom/kingroot/kinguser/aqs;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 79
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget v3, p0, Lcom/kingroot/kinguser/aqs;->aLy:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kingroot/kinguser/aqs;->aLy:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->My()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqy;->Ng()Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aqs;->a(Lcom/kingroot/kinguser/aqy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_4
    if-eqz v1, :cond_5

    .line 109
    :try_start_4
    invoke-interface {v1, p0}, Lcom/kingroot/kinguser/aqs$a;->d(Lcom/kingroot/kinguser/aqs;)V

    .line 112
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aqs;->aLv:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public a(Lcom/kingroot/kinguser/aqs$a;)V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqs;->aLt:Ljava/lang/ref/WeakReference;

    .line 204
    return-void
.end method

.method public abstract getIconDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
