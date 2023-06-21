.class public Lcom/kingroot/loader/host/KlContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/host/KlContentProvider$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/kingroot/loader/host/KlContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.kingroot.loader.ProxyContentProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private static c(Landroid/net/Uri;)Lcom/kingroot/loader/host/KlContentProvider$a;
    .locals 6
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 96
    sget-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v3, v0

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move-object v0, v1

    .line 131
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 111
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    .line 112
    invoke-interface {v0, v3}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v4

    .line 113
    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->launchPlugin(I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    sget-object v2, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse pluginId fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {v0, v3}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 115
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 118
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.kingroot.loader.ProxyContentProvider/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uri after : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getContentProvider(Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v3

    .line 124
    if-nez v3, :cond_3

    move-object v0, v1

    goto/16 :goto_0

    .line 127
    :cond_3
    new-instance v0, Lcom/kingroot/loader/host/KlContentProvider$a;

    invoke-direct {v0, v1}, Lcom/kingroot/loader/host/KlContentProvider$a;-><init>(Lcom/kingroot/loader/host/KlContentProvider$1;)V

    .line 128
    iput-object v2, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    .line 129
    iput-object v3, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    const-string v1, "delete begin"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/kingroot/loader/host/KlContentProvider;->c(Landroid/net/Uri;)Lcom/kingroot/loader/host/KlContentProvider$a;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    const-string v1, "getType begin"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/kingroot/loader/host/KlContentProvider;->c(Landroid/net/Uri;)Lcom/kingroot/loader/host/KlContentProvider$a;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    const-string v1, "insert begin"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/kingroot/loader/host/KlContentProvider;->c(Landroid/net/Uri;)Lcom/kingroot/loader/host/KlContentProvider$a;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    const-string v1, "query begin"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/kingroot/loader/host/KlContentProvider;->c(Landroid/net/Uri;)Lcom/kingroot/loader/host/KlContentProvider$a;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    sget-object v0, Lcom/kingroot/loader/host/KlContentProvider;->a:Ljava/lang/String;

    const-string v1, "update begin"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/kingroot/loader/host/KlContentProvider;->c(Landroid/net/Uri;)Lcom/kingroot/loader/host/KlContentProvider$a;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
