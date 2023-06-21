.class Lcom/kingroot/kinguser/aks$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private Lc:Landroid/content/SharedPreferences$Editor;

.field final synthetic avI:Lcom/kingroot/kinguser/aks;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aks;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 2130
    iput-object p1, p0, Lcom/kingroot/kinguser/aks$a;->avI:Lcom/kingroot/kinguser/aks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    .line 2131
    if-nez p2, :cond_0

    .line 2132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEditor can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2134
    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    .line 2135
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 2206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2209
    :cond_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2183
    return-object p0
.end method

.method public commit()Z
    .locals 2

    .prologue
    .line 2192
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/uj;->kA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2194
    const/4 v0, 0x1

    .line 2201
    :goto_0
    return v0

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2198
    :catch_0
    move-exception v0

    .line 2201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2171
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2154
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2160
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2139
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 2144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2147
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/kingroot/kinguser/aks$a;->Lc:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2177
    return-object p0
.end method
