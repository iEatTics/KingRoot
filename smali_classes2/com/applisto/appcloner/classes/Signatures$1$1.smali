.class Lcom/applisto/appcloner/classes/Signatures$1$1;
.super Ljava/lang/Object;
.source "Signatures.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/Signatures$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applisto/appcloner/classes/Signatures$1;

.field final synthetic val$originalPackageManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/Signatures$1;Ljava/lang/Object;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->val$originalPackageManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getResolveInfos(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.content.pm.ParceledListSlice"

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v1, "mList"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    .line 246
    :cond_1
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 250
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkSignatures"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 109
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    aput-object p1, p3, v1

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    .line 115
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    aput-object p1, p3, v0

    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 118
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    goto :goto_1

    :cond_3
    const-string v0, "getInstallerPackageName"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    new-instance p1, Ljava/lang/String;

    const-string v0, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->val$originalPackageManager:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getPackageInfo"

    .line 134
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "com.facebook.services"

    const-string v1, "com.twitter.android"

    const-string v2, "com.facebook.lite"

    const-string v3, "com.facebook.katana"

    const/4 v4, 0x0

    const-string v5, "WEB_ONLY"

    if-eqz p3, :cond_8

    if-eqz p1, :cond_12

    .line 136
    :try_start_2
    move-object p2, p1

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 137
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 141
    :cond_5
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getPackageInfo; returning null for Facebook packages"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 143
    :cond_6
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$200(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 145
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getPackageInfo; returning null for Twitter package"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 147
    :cond_7
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 148
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p3, :cond_12

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p3, p3

    if-lez p3, :cond_12

    .line 151
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalSignatures:[Landroid/content/pm/Signature;

    iput-object p3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto/16 :goto_3

    :cond_8
    const-string p3, "getApplicationInfo"

    .line 159
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p1, :cond_12

    .line 161
    move-object p2, p1

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 162
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 163
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 166
    :cond_9
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getApplicationInfo; returning null for Facebook packages"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 168
    :cond_a
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$200(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 170
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getApplicationInfo; returning null for Twitter package"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 174
    :cond_b
    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, -0x3

    iput p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_3

    :cond_c
    const-string p3, "queryIntentActivities"

    .line 176
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v0, "com.facebook.katana/.ProxyAuth"

    const-string v1, "WEB_ONLY_ALT"

    if-eqz p3, :cond_10

    .line 178
    :try_start_3
    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$300(Lcom/applisto/appcloner/classes/Signatures;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 179
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/Signatures$1$1;->getResolveInfos(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 180
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto/16 :goto_3

    .line 182
    :cond_d
    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    .line 183
    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 186
    :cond_e
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/Signatures$1$1;->getResolveInfos(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 188
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 189
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_f

    .line 192
    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 193
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 200
    :try_start_4
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_10
    const-string p3, "resolveIntent"

    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz p2, :cond_12

    .line 204
    :try_start_5
    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    .line 205
    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 208
    :cond_11
    move-object p2, p1

    check-cast p2, Landroid/content/pm/ResolveInfo;

    if-eqz p2, :cond_12

    .line 211
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 212
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; resolveIntent; returning no resolved intent for Facebook"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v4

    :catchall_1
    move-exception p2

    .line 218
    :try_start_6
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 222
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_3
    return-object p1
.end method
