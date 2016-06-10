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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <char> %ebp-45 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -46(%ebp)   1  [ $v2       <char> %ebp-46 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $54395, %eax            #   1:     div    t2 <- 54395, 46220
    movl    $46220, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t3 <- t2, 45252
    movl    $45252, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t4 <- t3, 60488
    movl    $60488, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     mul    t5 <- t4, 61656
    movl    $61656, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     mul    t6 <- t5, 33406
    movl    $33406, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     div    t7 <- t6, 91344
    movl    $91344, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t8 <- t7, 32395
    movl    $32395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $19302, %eax            #   8:     if     19302 > t8 goto 2_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  13:     call   t9 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  14:     if     t9 # 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #  15:     goto   6_if_false
l_f0_5_if_true:
    movl    $99, %eax               #  17:     assign v2 <- 99
    movb    %al, -46(%ebp)         
    jmp     l_f0_4                  #  18:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $76464, %eax            #  21:     if     76464 <= 52524 goto 10_if_true
    movl    $52524, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  22:     goto   11_if_false
l_f0_10_if_true:
    call    dummyCHARfunc           #  24:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_15_while_cond:
    movl    $89792, %eax            #  26:     if     89792 # 63116 goto 16_while_body
    movl    $63116, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  27:     goto   14
l_f0_16_while_body:
    movl    $48469, %eax            #  29:     if     48469 <= 67252 goto 19_if_true
    movl    $67252, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  30:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  32:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_15_while_cond      #  35:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_9                  #  37:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 1 of <array 6 of <array 9 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_8                  #   1:     goto   8
    jmp     l_f1_2                  #   2:     goto   2
l_f1_8:
    jmp     l_f1_2                  #   4:     goto   2
l_f1_2:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #  10:     return t3
    jmp     l_f1_exit              
    movl    $5911, %eax             #  11:     add    t4 <- 5911, 92907
    movl    $92907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t5 <- t4, 23676
    movl    $23676, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     if     t5 # 24961 goto 12
    movl    $24961, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  14:     goto   13
l_f1_12:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_14                 #  17:     goto   14
l_f1_13:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f1_14:
    movzbl  -29(%ebp), %eax         #  21:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 10 of <array 8 of <array 3 of <int>>>>>>> %ebp+8 ]

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
l_f2_5_while_cond:
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5_while_cond       #   3:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 8 of <array 10 of <array 8 of <array 3 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    call    WriteLn                 #   2:     call   WriteLn
    jmp     l_test_exit            
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    leal    v1, %eax                #   5:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   7:     call   f2
    addl    $4, %esp               
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyBOOLfunc           #  11:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 8 of <array 8 of <array 10 of <array 8 of <array 3 of <int>>>>>>
    .long    5
    .long    8
    .long    8
    .long   10
    .long    8
    .long    3
    .skip 61440








    # end of global data section
    #-----------------------------------------

    .end
##################################################
