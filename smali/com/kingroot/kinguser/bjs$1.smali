.class Lcom/kingroot/kinguser/bjs$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byE:Lcom/kingroot/kinguser/bjs;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjs;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingroot/kinguser/bjs$1;->byE:Lcom/kingroot/kinguser/bjs;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 8
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 124
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adv$b;

    move-object v1, v0

    .line 126
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/afd;->e(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 130
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_2

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 133
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    .line 138
    :goto_2
    if-ge v2, v5, :cond_7

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/bjs;->wa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 143
    iget-boolean v6, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v6, :cond_3

    iget v6, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-ne v6, v7, :cond_5

    .line 144
    :cond_3
    if-eqz v1, :cond_4

    .line 145
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v5, v2, v0}, Lcom/kingroot/kinguser/adv$b;->f(III)V

    .line 138
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 149
    :cond_5
    iget v6, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    sparse-switch v6, :sswitch_data_0

    .line 179
    :goto_4
    if-eqz v1, :cond_4

    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v5, v2, v0}, Lcom/kingroot/kinguser/adv$b;->f(III)V

    goto :goto_3

    .line 152
    :sswitch_0
    new-instance v6, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {v6}, Lcom/kingroot/kinguser/aex$a;-><init>()V

    .line 153
    iput-object v0, v6, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 154
    iput-boolean v3, v6, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 155
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 162
    :sswitch_1
    new-instance v6, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {v6}, Lcom/kingroot/kinguser/aex$a;-><init>()V

    .line 163
    iput-object v0, v6, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 164
    iput-boolean v3, v6, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 165
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 169
    :sswitch_2
    new-instance v6, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {v6}, Lcom/kingroot/kinguser/aex$a;-><init>()V

    .line 170
    iput-object v0, v6, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 171
    iput-boolean v3, v6, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 172
    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->hasLauncherOrMain:I

    if-ne v0, v7, :cond_6

    .line 174
    iput-boolean v3, v6, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 176
    :cond_6
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 187
    :cond_7
    if-eqz v1, :cond_8

    .line 188
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v5, 0x7f070096

    .line 190
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 189
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/kingroot/kinguser/adv$b;->a(IILjava/lang/Object;Ljava/lang/CharSequence;)V

    .line 197
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bjs$1;->byE:Lcom/kingroot/kinguser/bjs;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bjs;->n(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 192
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v5, 0x7f07037e

    .line 193
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-interface {v1, v0, v3, v4, v2}, Lcom/kingroot/kinguser/adv$b;->a(IILjava/lang/Object;Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    move-object v1, v0

    goto/16 :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0xb -> :sswitch_1
    .end sparse-switch
.end method
