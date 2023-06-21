.class public Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;
.super Lcom/kingroot/kinguser/ai/IAntiInjectClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final CHECK_ARRAY_LONG:I = 0x5

.field private static final CHECK_FUNCTION:I = 0x2

.field private static final CHECK_PROCESS:I = 0x3

.field private static final CHECK_SOPATH:I = 0x4

.field private static final CHECK_URANUS:I = 0x0

.field private static final CHECK_VERSION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahi;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ahi;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;->this$0:Lcom/kingroot/kinguser/ahi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/IAntiInjectClient$Stub;-><init>()V

    return-void
.end method

.method private logUranusDefenseEvent(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 125
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    .line 128
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 130
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bgh;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 133
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 134
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_0
    move-object/from16 v0, p4

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v3, ""

    .line 142
    const-string v2, ""

    .line 143
    invoke-static/range {p6 .. p6}, Lcom/kingroot/kinguser/bfn;->lc(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 144
    if-eqz v4, :cond_0

    .line 145
    const/4 v2, 0x0

    aget-object p6, v4, v2

    .line 146
    const/4 v2, 0x1

    aget-object v3, v4, v2

    .line 147
    const/4 v2, 0x2

    aget-object v2, v4, v2

    .line 149
    :cond_0
    move-object/from16 v0, p5

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p6

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v5, ""

    .line 155
    const-string v4, ""

    .line 156
    invoke-static/range {p7 .. p7}, Lcom/kingroot/kinguser/bfn;->lc(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 157
    if-eqz v6, :cond_1

    .line 158
    const/4 v4, 0x1

    aget-object v5, v6, v4

    .line 159
    const/4 v4, 0x2

    aget-object v4, v6, v4

    .line 161
    :cond_1
    move-object/from16 v0, p7

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 167
    new-instance v15, Lcom/kingroot/kinguser/bhf;

    invoke-direct {v15}, Lcom/kingroot/kinguser/bhf;-><init>()V

    .line 171
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 175
    :goto_1
    invoke-static/range {p7 .. p7}, Lcom/kingroot/kinguser/bgh;->lm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 176
    const/4 v5, 0x0

    .line 177
    const-wide/16 v8, -0x1

    .line 178
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 181
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v10

    const/16 v11, 0x40

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v11}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 182
    invoke-static {v10}, Lcom/kingroot/kinguser/aaz;->b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v5

    .line 183
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_2

    .line 184
    new-instance v11, Ljava/io/File;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v8

    .line 190
    :cond_2
    :goto_2
    const/4 v11, 0x0

    .line 191
    const/4 v10, -0x1

    .line 193
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 194
    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 195
    move-object/from16 v0, v17

    iget v10, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 197
    :goto_3
    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Lcom/kingroot/kinguser/bhf;->lv(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v17

    .line 198
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/kingroot/kinguser/bhf;->cz(J)Lcom/kingroot/kinguser/bhf;

    move-result-object v6

    .line 199
    invoke-virtual {v6, v4}, Lcom/kingroot/kinguser/bhf;->lw(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 200
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/bhf;->lx(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/bhf;->ly(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 202
    invoke-virtual {v4, v8, v9}, Lcom/kingroot/kinguser/bhf;->cA(J)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 203
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/bhf;->lz(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 204
    invoke-virtual {v4, v13}, Lcom/kingroot/kinguser/bhf;->lA(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 205
    invoke-virtual {v4, v11}, Lcom/kingroot/kinguser/bhf;->lB(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;

    move-result-object v4

    .line 206
    invoke-virtual {v4, v10}, Lcom/kingroot/kinguser/bhf;->iL(I)Lcom/kingroot/kinguser/bhf;

    .line 207
    invoke-virtual {v15}, Lcom/kingroot/kinguser/bhf;->acp()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p5

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_4
    invoke-static {v2, v12, v14}, Lcom/kingroot/kinguser/ahk;->a(ILjava/util/List;Ljava/util/List;)V

    .line 214
    return-void

    .line 136
    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v5

    .line 173
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 213
    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 196
    :catch_1
    move-exception v17

    goto :goto_3

    .line 186
    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method private logUranusDefenseState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 223
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/ahk;->a(ZLjava/util/List;)V

    .line 229
    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    new-instance v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    invoke-direct {v7, p1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-boolean v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apZ:Z

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;->this$0:Lcom/kingroot/kinguser/ahi;

    invoke-static {v2, v7}, Lcom/kingroot/kinguser/ahi;->a(Lcom/kingroot/kinguser/ahi;Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/adm;->a(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V

    .line 70
    :cond_0
    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    const-string v3, "zygote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iget-boolean v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apZ:Z

    if-nez v2, :cond_2

    :goto_0
    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->version:Ljava/lang/String;

    iget v3, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->uid:I

    iget-object v4, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    iget-object v5, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apW:Ljava/lang/String;

    iget-object v6, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apX:Ljava/lang/String;

    iget-object v7, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apY:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;->logUranusDefenseEvent(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v0

    .line 71
    goto :goto_0

    .line 78
    :cond_3
    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    const-string v3, "tencent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    const-string v3, "kingroot"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_4
    iget-boolean v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apZ:Z

    if-eqz v2, :cond_5

    .line 83
    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apY:Ljava/lang/String;

    const-string v3, "com.lbe.security"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apY:Ljava/lang/String;

    const-string v3, "com.kingroot.master"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    :cond_5
    iget-boolean v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apZ:Z

    if-nez v2, :cond_6

    :goto_2
    iget-object v2, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->version:Ljava/lang/String;

    iget v3, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->uid:I

    iget-object v4, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    iget-object v5, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apW:Ljava/lang/String;

    iget-object v6, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apX:Ljava/lang/String;

    iget-object v7, v7, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apY:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;->logUranusDefenseEvent(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2
.end method

.method public setHookStatus(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "&&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    array-length v2, v0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "uranus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    aget-object v2, v0, v4

    const-string v3, "zygote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    aget-object v2, v0, v1

    const/4 v3, 0x2

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;->logUranusDefenseState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
