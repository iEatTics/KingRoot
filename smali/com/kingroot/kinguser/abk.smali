.class public Lcom/kingroot/kinguser/abk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static YW:Ljava/lang/Boolean;

.field private static YY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    sput-object v2, Lcom/kingroot/kinguser/abk;->YW:Ljava/lang/Boolean;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/abk;->YY:[Ljava/lang/String;

    return-void
.end method

.method public static Q(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abk;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 191
    :goto_0
    return-object p0

    .line 189
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/abk;->et(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-static {p0}, Lcom/kingroot/kinguser/abk;->es(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/abk;->eu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0, p1}, Lcom/kingroot/kinguser/abk;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 216
    :goto_0
    return-object p0

    .line 212
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/abk;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 216
    goto :goto_0
.end method

.method public static declared-synchronized ae(Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v4, Lcom/kingroot/kinguser/abk;

    monitor-enter v4

    if-eqz p0, :cond_2

    move v3, v1

    .line 20
    :goto_0
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/abk;->YY:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_3

    .line 24
    const-string v2, "su -V"

    .line 29
    :goto_1
    const-string v5, "sh"

    invoke-static {v5, v2}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    iget-object v2, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_0

    aget-object v1, v5, v2

    .line 33
    if-nez p0, :cond_4

    .line 34
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v0, v1

    .line 54
    :cond_0
    :goto_3
    sget-object v1, Lcom/kingroot/kinguser/abk;->YY:[Ljava/lang/String;

    aput-object v0, v1, v3

    .line 56
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/abk;->YY:[Ljava/lang/String;

    aget-object v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 19
    :cond_2
    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    .line 26
    :cond_3
    :try_start_1
    const-string v2, "su -v"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 40
    :cond_4
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    move-object v0, v1

    .line 42
    goto :goto_3

    .line 44
    :cond_5
    const-string v0, "0"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :cond_6
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_3
    const-string v0, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    if-eqz p0, :cond_4

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 160
    invoke-static {v4}, Lcom/kingroot/kinguser/abk;->ae(Z)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v5}, Lcom/kingroot/kinguser/abk;->ae(Z)Ljava/lang/String;

    move-result-object v1

    .line 163
    if-eqz p3, :cond_0

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string p3, "su"

    .line 165
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 166
    const-string v2, "SUPERSU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xbe

    if-ge v2, v3, :cond_3

    :cond_2
    const-string v2, "kinguser_su"

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x154

    if-lt v0, v1, :cond_4

    .line 168
    :cond_3
    if-lez p1, :cond_5

    .line 169
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s --context %s %d \"%s\""

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 177
    :cond_4
    :goto_0
    return-object p2

    .line 171
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s --context %s -c \"%s\""

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p0, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static es(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "su -c"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    .line 111
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private static et(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 127
    const/4 v2, 0x1

    :try_start_0
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static eu(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pm"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "u:r:system_app:s0"

    aput-object v3, v1, v2

    .line 142
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 143
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    .line 148
    :goto_1
    return-object v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static ev(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abk;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
