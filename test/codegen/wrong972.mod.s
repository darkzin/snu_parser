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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    jmp     l_f0_exit              
    movl    $0, %eax                #   1:     if     0 # 0 goto 5_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  10:     goto   8
    call    dummyBOOLfunc           #  11:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_14_while_cond:
    jmp     l_f0_13                 #  13:     goto   13
    jmp     l_f0_14_while_cond      #  14:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:
    call    WriteLn                 #  18:     call   WriteLn

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 10 of <array 1 of <array 5 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v5       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $83044, %eax            #   1:     assign v4 <- 83044
    movl    %eax, -36(%ebp)        
l_f1_5_while_cond:
    movl    $19710, %eax            #   3:     add    t0 <- 19710, 78688
    movl    $78688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t1 <- t0, 5141
    movl    $5141, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t2 <- t1, 93284
    movl    $93284, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     sub    t3 <- t2, 91652
    movl    $91652, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     if     t3 = 10252 goto 6_while_body
    movl    $10252, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  10:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
    movl    $35069, %eax            #  13:     assign v4 <- 35069
    movl    %eax, -36(%ebp)        
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  15:     assign v5 <- t4
    movb    %al, -37(%ebp)         

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 1 of <array 10 of <array 1 of <array 5 of <array 8 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]
    #   -456(%ebp)  424  [ $v3       <array 1 of <array 10 of <array 1 of <array 5 of <array 8 of <bool>>>>>> %ebp-456 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $444, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $111, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-456(%ebp)           # local array 'v3': 5 dimensions
    movl    $1,-452(%ebp)           #   dimension 1: 1 elements
    movl    $10,-448(%ebp)          #   dimension 2: 10 elements
    movl    $1,-444(%ebp)           #   dimension 3: 1 elements
    movl    $5,-440(%ebp)           #   dimension 4: 5 elements
    movl    $8,-436(%ebp)           #   dimension 5: 8 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    movl    $0, %eax                #   5:     param  2 <- 0
    pushl   %eax                   
    movl    $0, %eax                #   6:     param  1 <- 0
    pushl   %eax                   
    leal    -456(%ebp), %eax        #   7:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   9:     call   t1 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     assign v2 <- t1
    movb    %al, -29(%ebp)         
l_f2_7_while_cond:
    movl    $27363, %eax            #  12:     mul    t2 <- 27363, 41513
    movl    $41513, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t3 <- t2, 51866
    movl    $51866, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     if     t3 > 96626 goto 8_while_body
    movl    $96626, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_while_body:
    movl    $98, %eax               #  17:     assign v2 <- 98
    movb    %al, -29(%ebp)         
    jmp     l_f2_7_while_cond       #  18:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $444, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $23309, %eax            #   0:     assign v0 <- 23309
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
