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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $v1       <int> %ebp-44 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     return 0
    jmp     l_f0_exit              
l_f0_5_while_cond:
    movl    $98, %eax               #   3:     if     98 # 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $29956, %eax            #  11:     sub    t3 <- 29956, 38618
    movl    $38618, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     sub    t4 <- t3, 4355
    movl    $4355, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t5 <- t4, 90809
    movl    $90809, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t6 <- t5, 66213
    movl    $66213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     assign v1 <- t6
    movl    %eax, -44(%ebp)        
    movl    $19577, %eax            #  16:     div    t7 <- 19577, 31083
    movl    $31083, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     div    t8 <- t7, 72666
    movl    $72666, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     sub    t9 <- t8, 66230
    movl    $66230, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     assign v1 <- t9
    movl    %eax, -44(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -19(%ebp)   1  [ $v4       <bool> %ebp-19 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_5_while_cond:
    movl    $1, %eax                #   3:     if     1 = 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   4:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #   6:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  13:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     if     t4 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_12                
    jmp     l_f1_13                 #  15:     goto   13
l_f1_12:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_14                 #  18:     goto   14
l_f1_13:
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_14:
    movzbl  -18(%ebp), %eax         #  22:     assign v4 <- t5
    movb    %al, -19(%ebp)         
    movl    $41518, %eax            #  23:     if     41518 <= 45514 goto 18_if_true
    movl    $45514, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  24:     goto   19_if_false
l_f1_18_if_true:
l_f1_22_while_cond:
    jmp     l_f1_21                 #  27:     goto   21
    movl    $1, %eax                #  28:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_22_while_cond      #  29:     goto   22_while_cond
l_f1_21:
    jmp     l_f1_17                 #  31:     goto   17
l_f1_19_if_false:
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t3 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_7                  #   7:     goto   7
l_f2_9:
    jmp     l_f2_7                  #   9:     goto   7
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  11:     goto   8
l_f2_7:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  15:     assign v2 <- t4
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
l_test_1_while_cond:
    jmp     l_test_1_while_cond     #   1:     goto   1_while_cond
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $37289, %eax            #   3:     assign v0 <- 37289
    movl    %eax, v0               
    call    dummyINTfunc            #   4:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     if     t2 < 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $14276, %eax            #  12:     assign v0 <- 14276
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
