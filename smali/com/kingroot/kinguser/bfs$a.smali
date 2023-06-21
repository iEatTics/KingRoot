.class public Lcom/kingroot/kinguser/bfs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final bnt:Lcom/kingroot/kinguser/bft;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/bft;->aaL()Lcom/kingroot/kinguser/bft;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 2

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->c(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bft;->aaM()V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->dP(Z)V

    goto :goto_0

    .line 131
    :pswitch_5
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->bR(Ljava/util/List;)V

    goto :goto_0

    .line 134
    :pswitch_6
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0

    .line 137
    :pswitch_7
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0

    .line 140
    :pswitch_8
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->lh(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_9
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bft;->deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 150
    sparse-switch p1, :sswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 152
    :sswitch_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/kingroot/kinguser/bft;->a(ZJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 154
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfs$a;->bnt:Lcom/kingroot/kinguser/bft;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bft;->aaJ()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
