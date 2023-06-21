.class public abstract Lcom/kingroot/kinguser/bms;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bCt:Lcom/kingroot/kinguser/bmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bms;->bCt:Lcom/kingroot/kinguser/bmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    sget-object v0, Lcom/kingroot/kinguser/bms;->bCt:Lcom/kingroot/kinguser/bmt;

    if-nez v0, :cond_1

    .line 219
    const-class v1, Lcom/kingroot/kinguser/bms;

    monitor-enter v1

    .line 220
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bms;->bCt:Lcom/kingroot/kinguser/bmt;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/kingroot/kinguser/bmt;

    const-string v2, "a4"

    invoke-static {v2}, Lcom/kingroot/kinguser/bmr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/bmt;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kingroot/kinguser/bms;->bCt:Lcom/kingroot/kinguser/bmt;

    .line 223
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bms;->bCt:Lcom/kingroot/kinguser/bmt;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bmt;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
