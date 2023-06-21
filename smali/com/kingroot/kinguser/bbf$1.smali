.class Lcom/kingroot/kinguser/bbf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbf;->d(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic beZ:Lcom/kingroot/kinguser/bbf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbf;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kingroot/kinguser/bbf$1;->beZ:Lcom/kingroot/kinguser/bbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 142
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 143
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v5

    .line 148
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    .line 149
    iget v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bgh;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget v3, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bgh;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 153
    iget v3, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_7

    .line 155
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 159
    :goto_1
    :try_start_2
    const-string v2, "com.android.kinguser.console"

    .line 168
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 169
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 170
    iget v3, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move-object v1, v2

    .line 177
    :cond_6
    iput-object v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    .line 178
    iput-object v2, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    :goto_3
    iget v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    if-nez v1, :cond_8

    .line 186
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf$1;->beZ:Lcom/kingroot/kinguser/bbf;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/bbf;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    :try_start_3
    const-string v1, "ADB Program"

    goto :goto_1

    .line 160
    :cond_7
    iget v3, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_2

    .line 162
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f07027e

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto :goto_2

    .line 163
    :catch_1
    move-exception v1

    .line 164
    :try_start_5
    const-string v1, "System Program"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 187
    :cond_8
    iget v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf$1;->beZ:Lcom/kingroot/kinguser/bbf;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bbf;->b(Lcom/kingroot/kinguser/bbf;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    goto :goto_0

    .line 179
    :catch_2
    move-exception v1

    goto :goto_3
.end method
