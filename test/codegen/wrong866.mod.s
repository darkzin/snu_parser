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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $77870, %eax            #   0:     add    t6 <- 77870, 18980
    movl    $18980, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     sub    t7 <- t6, 32816
    movl    $32816, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     add    t8 <- t7, 91015
    movl    $91015, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t9 <- t8, 89763
    movl    $89763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     assign v0 <- t9
    movl    %eax, 8(%ebp)          
l_f0_2_while_cond:
    movl    $19094, %eax            #   6:     sub    t10 <- 19094, 98643
    movl    $98643, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $69160, %eax            #   7:     if     69160 > t10 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
    movl    $64721, %eax            #  12:     add    t11 <- 64721, 76101
    movl    $76101, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t12 <- t11, 93526
    movl    $93526, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t13 <- t12, 21675
    movl    $21675, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     return t13
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 5 of <array 4 of <array 9 of <array 3 of <bool>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $29801, %eax            #   0:     sub    t6 <- 29801, 23401
    movl    $23401, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    call    ReadInt                 #   2:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   4:     call   t8 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     if     t8 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_4_if_false         #   6:     goto   4_if_false
l_f1_5:
    jmp     l_f1_2                  #   8:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_2_if_true          #   2:     goto   2_if_true
l_f2_2_if_true:
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   5:     if     98 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   6:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $97, %eax               #  11:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  12:     goto   1
l_f2_1:
    call    dummyINTfunc            #  14:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $82788, %eax            #   1:     if     82788 > 4256 goto 7_if_true
    movl    $4256, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #   2:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   4:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_0                #   7:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_12_if_false      #  10:     goto   12_if_false
l_test_14_while_cond:
    movl    $97, %eax               #  12:     if     97 # 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  13:     goto   13
l_test_15_while_body:
    movl    $69740, %eax            #  15:     if     69740 >= 86909 goto 18
    movl    $86909, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18              
    jmp     l_test_19               #  16:     goto   19
l_test_18:
    movl    $1, %eax                #  18:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_20               #  19:     goto   20
l_test_19:
    movl    $0, %eax                #  21:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_20:
    movzbl  -13(%ebp), %eax         #  23:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  26:     goto   24_while_cond
    jmp     l_test_14_while_cond    #  27:     goto   14_while_cond
l_test_13:
    jmp     l_test_10               #  29:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $84236, %eax            #  32:     if     84236 <= 1537 goto 27_if_true
    movl    $1537, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_27_if_true      
    jmp     l_test_28_if_false      #  33:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  36:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    leal    _str_1, %eax            #  37:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  38:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  39:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_26               #  40:     goto   26
l_test_28_if_false:
l_test_26:
    movl    $77307, %eax            #  43:     mul    t3 <- 77307, 11751
    movl    $11751, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     div    t4 <- t3, 6794
    movl    $6794, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     div    t5 <- t4, 90458
    movl    $90458, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  46:     assign v1 <- t5
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
