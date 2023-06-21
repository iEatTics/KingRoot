.class public final Lcom/kingroot/kinguser/bku;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final YT:Ljava/lang/Object;

.field private static volatile YU:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bku;->YT:Ljava/lang/Object;

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bku;->YU:Ljava/lang/Boolean;

    return-void
.end method

.method public static qO()Z
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/kingroot/kinguser/bku;->YU:Ljava/lang/Boolean;

    .line 158
    if-nez v0, :cond_1

    .line 159
    sget-object v1, Lcom/kingroot/kinguser/bku;->YT:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bku;->YU:Ljava/lang/Boolean;

    .line 161
    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    .line 163
    const-string v0, "java.library.path"

    const-string v2, ""

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/system/lib64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bku;->YU:Ljava/lang/Boolean;

    .line 168
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 165
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bku;->YU:Ljava/lang/Boolean;

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static qb()I
    .locals 1

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
