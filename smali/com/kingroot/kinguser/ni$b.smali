.class public final Lcom/kingroot/kinguser/ni$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static volatile xh:Lcom/kingroot/kinguser/np;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ni$b;->xh:Lcom/kingroot/kinguser/np;

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/ni$c;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/ni$b;->fe()Lcom/kingroot/kinguser/np;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ni$c;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ni$c;->fg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/np;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/ni$b;->fe()Lcom/kingroot/kinguser/np;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/np;->fm()V

    .line 119
    return-void
.end method

.method public static bJ(Ljava/lang/String;)Lcom/kingroot/kinguser/ni$c;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/kingroot/kinguser/ni$c;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ni$c;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/ni$b;->fe()Lcom/kingroot/kinguser/np;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/np;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ni$c;->bK(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-object v0
.end method

.method private static fe()Lcom/kingroot/kinguser/np;
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/kingroot/kinguser/ni$b;->xh:Lcom/kingroot/kinguser/np;

    if-nez v0, :cond_1

    .line 97
    const-class v1, Lcom/kingroot/kinguser/ni;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ni$b;->xh:Lcom/kingroot/kinguser/np;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "uranus_files.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/np;->g(Ljava/lang/String;Z)Lcom/kingroot/kinguser/np;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ni$b;->xh:Lcom/kingroot/kinguser/np;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ni$b;->xh:Lcom/kingroot/kinguser/np;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
