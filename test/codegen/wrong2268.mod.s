##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $82922, %eax            #   0:     assign v4 <- 82922
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   1:     if     0 # 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_2                  #   2:     goto   2
    jmp     l_f0_2                  #   3:     goto   2
l_f0_2:
    movl    $1, %eax                #   5:     assign t14 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
    movl    $0, %eax                #   7:     assign t14 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   9:     return t14
    jmp     l_f0_exit              
    movl    $100, %eax              #  10:     if     100 >= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    movl    $0, %eax                #  13:     assign v2 <- 0
    movb    %al, 8(%ebp)           
l_f0_15_while_cond:
    movl    $75627, %eax            #  15:     if     75627 <= 46454 goto 16_while_body
    movl    $46454, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  16:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  18:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_9                  #  20:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 91 of <array 32 of <array 65 of <array 4 of <array 34 of <bool>>>>>>> %ebp+16 ]
    #    -25(%ebp)   1  [ $v5       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t14 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   1:     assign v5 <- 1
    movb    %al, -25(%ebp)         
    movl    $18541, %eax            #   2:     add    t15 <- 18541, 75127
    movl    $75127, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t16 <- t15, 19665
    movl    $19665, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v3 <- t16
    movl    %eax, 12(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <ptr(4) to <array 91 of <array 32 of <array 65 of <array 4 of <array 34 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t17      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]
    #   -25742140(%ebp)  25742104  [ $v3       <array 91 of <array 32 of <array 65 of <array 4 of <array 34 of <bool>>>>>> %ebp-25742140 ]
    #   -25742144(%ebp)   4  [ $v4       <int> %ebp-25742144 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25742132, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6435533, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-25742140(%ebp)      # local array 'v3': 5 dimensions
    movl    $91,-25742136(%ebp)     #   dimension 1: 91 elements
    movl    $32,-25742132(%ebp)     #   dimension 2: 32 elements
    movl    $65,-25742128(%ebp)     #   dimension 3: 65 elements
    movl    $4,-25742124(%ebp)      #   dimension 4: 4 elements
    movl    $34,-25742120(%ebp)     #   dimension 5: 34 elements

    # function body
l_f2_1_while_cond:
    movl    $17180, %eax            #   1:     if     17180 = 6652 goto 2_while_body
    movl    $6652, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    movl    $98, %eax               #   6:     assign v2 <- 98
    movb    %al, -33(%ebp)         
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $40843, %eax            #  10:     if     40843 <= 52240 goto 10_if_true
    movl    $52240, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
    call    ReadInt                 #  13:     call   t14 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    -25742140(%ebp), %eax   #  14:     &()    t15 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t15
    pushl   %eax                   
    movl    $83634, %eax            #  16:     sub    t16 <- 83634, 65241
    movl    $65241, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t16
    pushl   %eax                   
    movl    $79134, %eax            #  18:     param  0 <- 79134
    pushl   %eax                   
    call    f1                      #  19:     call   t17 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $52414, %eax            #  20:     return 52414
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  21:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $2107, %eax             #  24:     div    t18 <- 2107, 36215
    movl    $36215, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     assign v4 <- t18
    movl    %eax, -25742144(%ebp)  

l_f2_exit:
    # epilogue
    addl    $25742132, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t4       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $4958, %eax             #   8:     assign v0 <- 4958
    movl    %eax, v0               
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  10:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #  14:     call   t2 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     add    t3 <- t2, 1300
    movl    $1300, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     assign v0 <- t3
    movl    %eax, v0               
    call    dummyCHARfunc           #  17:     call   t4 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $74782, %eax            #  20:     add    t5 <- 74782, 47007
    movl    $47007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t6 <- t5, 21378
    movl    $21378, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t7 <- t6, 16054
    movl    $16054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     sub    t8 <- t7, 91853
    movl    $91853, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     add    t9 <- t8, 45458
    movl    $45458, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  25:     sub    t10 <- t9, 98514
    movl    $98514, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $45732, %eax            #  26:     mul    t11 <- 45732, 52897
    movl    $52897, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     div    t12 <- t11, 62954
    movl    $62954, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     div    t13 <- t12, 26942
    movl    $26942, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #  29:     if     t10 = t13 goto 16_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  30:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  32:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    jmp     l_test_20_while_body    #  35:     goto   20_while_body
    jmp     l_test_20_while_body    #  36:     goto   20_while_body
    jmp     l_test_20_while_body    #  37:     goto   20_while_body
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  39:     goto   19_while_cond

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
