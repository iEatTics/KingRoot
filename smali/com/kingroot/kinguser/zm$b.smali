.class final Lcom/kingroot/kinguser/zm$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static volatile WK:Lcom/kingroot/kinguser/zu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/zm$b;->WK:Lcom/kingroot/kinguser/zu;

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/zm$c;)V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/zm$b;->py()Lcom/kingroot/kinguser/zu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/zm$c;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/zm$c;->pA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zu;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/zm$b;->py()Lcom/kingroot/kinguser/zu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zu;->pF()V

    .line 165
    return-void
.end method

.method public static dz(Ljava/lang/String;)Lcom/kingroot/kinguser/zm$c;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/kingroot/kinguser/zm$c;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/zm$c;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/zm$b;->py()Lcom/kingroot/kinguser/zu;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/zu;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 157
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zm$c;->dA(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-object v0
.end method

.method private static py()Lcom/kingroot/kinguser/zu;
    .locals 4

    .prologue
    .line 143
    sget-object v0, Lcom/kingroot/kinguser/zm$b;->WK:Lcom/kingroot/kinguser/zu;

    if-nez v0, :cond_1

    .line 144
    const-class v1, Lcom/kingroot/kinguser/zm;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/zm$b;->WK:Lcom/kingroot/kinguser/zu;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/kingroot/kinguser/zu;

    const-string v2, "a5"

    invoke-static {v2}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/zu;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kingroot/kinguser/zm$b;->WK:Lcom/kingroot/kinguser/zu;

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/zm$b;->WK:Lcom/kingroot/kinguser/zu;

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
