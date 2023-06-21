.class public Lcom/kingroot/kinguser/oa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static xI:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "allow { init zygote } default_android_service service_manager add;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allow { init zygote } servicemanager binder transfer;"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allow untrusted_app { init zygote } binder #;"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "permissive netd;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "force netd;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allow { init zygote } app_data_file file #;"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "allow { init zygote } app_data_file dir #;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "allow { init zygote } system_data_file file #;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allow { init zygote } system_data_file dir #;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allow appdomain default_android_service service_manager find"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/oa;->xI:[Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/nu;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    const-string v0, "/system/bin/app_process"

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 94
    const-string v1, "ls /system/bin/app_process32"

    invoke-interface {p0, v1}, Lcom/kingroot/kinguser/nu;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "/system/bin/app_process32"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v0, "/system/bin/app_process32"

    .line 100
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/kingroot/kinguser/nu;Lcom/kingroot/kinguser/nt;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/oa;->b(Lcom/kingroot/kinguser/nu;Lcom/kingroot/kinguser/nt;)V

    .line 72
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dk()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/oa;->a(Lcom/kingroot/kinguser/nu;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/kingroot/kinguser/oa;->a(Lcom/kingroot/kinguser/nu;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/oa;->a(Lcom/kingroot/kinguser/nu;Lcom/kingroot/kinguser/nt;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/nu;Lcom/kingroot/kinguser/nt;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, " -d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /system/bin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "com.king.uranus.daemon.internal.Main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->bI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/kingroot/kinguser/nu;->aQ(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/nu;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    sget-object v2, Lcom/kingroot/kinguser/oa;->xI:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -p "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/kingroot/kinguser/nu;->aQ(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static b(Lcom/kingroot/kinguser/ns;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v1, "p2"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "p1"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "p4"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "p3"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "p5"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "p6"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dA()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    const-string v1, "p7"

    invoke-interface {p0}, Lcom/kingroot/kinguser/ns;->dB()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    return-object v0
.end method

.method public static b(Lcom/kingroot/kinguser/nv;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string v1, "p1"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "p2"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "p3"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "p4"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "p5"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "p6"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "p7"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "p8"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dK()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v1, "p9"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "p11"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "p10"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dF()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v1, "p12"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "p13"

    invoke-interface {p0}, Lcom/kingroot/kinguser/nv;->dL()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    return-object v0
.end method

.method private static b(Lcom/kingroot/kinguser/nu;Lcom/kingroot/kinguser/nt;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/kingroot/kinguser/nu;->aQ(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/nt;->dl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/kingroot/kinguser/nu;->aQ(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x11

    return v0
.end method
