.class public Lcom/kingroot/kinguser/lv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/lm;


# static fields
.field private static volatile vh:Lcom/kingroot/kinguser/lv;

.field private static final vi:[B

.field private static final vj:[B

.field private static final vk:Z


# instance fields
.field private vl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/lv;->vi:[B

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/lv;->vj:[B

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ey()Z

    move-result v0

    sput-boolean v0, Lcom/kingroot/kinguser/lv;->vk:Z

    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/lv;->vl:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/lv;->vm:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/it;I)I
    .locals 1

    .prologue
    .line 163
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/lv;->b(Lcom/kingroot/kinguser/it;I)[B

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/kingroot/kinguser/lv;->p([B)I

    move-result v0

    return v0
.end method

.method private static b(Lcom/kingroot/kinguser/it;I)[B
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat /proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/exe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget-object v0, Lcom/kingroot/kinguser/lv;->vj:[B

    .line 177
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static bg(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/kingroot/kinguser/lv;->vk:Z

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "zygote64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_server"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    const/16 v0, 0x40

    .line 124
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private static bh(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    const-string v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zygote64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ek()Lcom/kingroot/kinguser/lv;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/lv;->vh:Lcom/kingroot/kinguser/lv;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/kingroot/kinguser/lv;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/lv;->vh:Lcom/kingroot/kinguser/lv;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/kingroot/kinguser/lv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/lv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/lv;->vh:Lcom/kingroot/kinguser/lv;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/lv;->vh:Lcom/kingroot/kinguser/lv;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static p([B)I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 181
    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcom/kingroot/kinguser/lv;->vi:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    sget-object v2, Lcom/kingroot/kinguser/lv;->vi:[B

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v4

    sget-object v2, Lcom/kingroot/kinguser/lv;->vi:[B

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v5

    sget-object v2, Lcom/kingroot/kinguser/lv;->vi:[B

    aget-byte v2, v2, v5

    if-ne v1, v2, :cond_0

    .line 192
    aget-byte v1, p0, v6

    if-ne v1, v3, :cond_2

    .line 193
    const/16 v0, 0x20

    goto :goto_0

    .line 194
    :cond_2
    aget-byte v1, p0, v6

    if-ne v1, v4, :cond_0

    .line 195
    const/16 v0, 0x40

    goto :goto_0
.end method


# virtual methods
.method public ai(I)I
    .locals 4

    .prologue
    const/16 v1, 0x20

    .line 133
    sget-boolean v0, Lcom/kingroot/kinguser/lv;->vk:Z

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/lv;->vm:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 145
    :cond_2
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 146
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/lv;->a(Lcom/kingroot/kinguser/it;I)I

    move-result v0

    .line 153
    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    .line 159
    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/lv;->vm:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public bc(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 64
    sget-boolean v0, Lcom/kingroot/kinguser/lv;->vk:Z

    if-nez v0, :cond_1

    .line 66
    const/16 v0, 0x20

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/lv;->bh(Ljava/lang/String;)Z

    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/lv;->vl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 81
    :cond_2
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 82
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    invoke-static {p1}, Lcom/kingroot/kinguser/lv;->bg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {p1}, Lcom/kingroot/kinguser/ju;->aP(Ljava/lang/String;)I

    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    invoke-static {p1}, Lcom/kingroot/kinguser/lv;->bg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 91
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/lv;->a(Lcom/kingroot/kinguser/it;I)I

    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    invoke-static {p1}, Lcom/kingroot/kinguser/lv;->bg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 97
    :cond_5
    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/kingroot/kinguser/lv;->vl:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
