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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 2 of <array 1 of <array 3 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 6 of <array 4 of <array 5 of <char>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
    movl    $30404, %eax            #   1:     mul    t2 <- 30404, 51592
    movl    $51592, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t3 <- t2, 65888
    movl    $65888, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t4 <- t3, 18792
    movl    $18792, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t4 = 21674 goto 2_while_body
    movl    $21674, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    WriteLn                 #   9:     call   WriteLn
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 1 of <array 6 of <array 4 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 2 of <array 1 of <array 3 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 10 of <array 6 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 7 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 4 of <array 10 of <int>>>>>>> %ebp+16 ]
    #   -232(%ebp)  204  [ $v3       <array 6 of <array 2 of <array 1 of <array 3 of <array 5 of <bool>>>>>> %ebp-232 ]
    #   -1096(%ebp)  864  [ $v4       <array 7 of <array 1 of <array 6 of <array 4 of <array 5 of <char>>>>>> %ebp-1096 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1084, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $271, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-232(%ebp)           # local array 'v3': 5 dimensions
    movl    $6,-228(%ebp)           #   dimension 1: 6 elements
    movl    $2,-224(%ebp)           #   dimension 2: 2 elements
    movl    $1,-220(%ebp)           #   dimension 3: 1 elements
    movl    $3,-216(%ebp)           #   dimension 4: 3 elements
    movl    $5,-212(%ebp)           #   dimension 5: 5 elements
    movl    $5,-1096(%ebp)          # local array 'v4': 5 dimensions
    movl    $7,-1092(%ebp)          #   dimension 1: 7 elements
    movl    $1,-1088(%ebp)          #   dimension 2: 1 elements
    movl    $6,-1084(%ebp)          #   dimension 3: 6 elements
    movl    $4,-1080(%ebp)          #   dimension 4: 4 elements
    movl    $5,-1076(%ebp)          #   dimension 5: 5 elements

    # function body
    leal    -1096(%ebp), %eax       #   0:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t2
    pushl   %eax                   
    leal    -232(%ebp), %eax        #   2:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   4:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   5:     if     98 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   6:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    ReadInt                 #  11:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $1084, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 6 of <array 9 of <array 4 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $14227, %eax            #   1:     if     14227 <= 26987 goto 2_if_true
    movl    $26987, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $61497, %eax            #   4:     if     61497 < 22759 goto 6_if_true
    movl    $22759, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_9:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  13:     goto   12
    jmp     l_f2_13_while_cond      #  14:     goto   13_while_cond
l_f2_12:
    call    dummyBOOLfunc           #  16:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #  17:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  21:     return t4
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <array 6 of <array 9 of <array 4 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    movl    $83601, %eax            #   0:     param  1 <- 83601
    pushl   %eax                   
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   3:     call   t1 <- f2
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     assign v0 <- t1
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_1                #   6:     goto   1
    jmp     l_test_1                #   7:     goto   1
    jmp     l_test_1                #   8:     goto   1
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            

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
v1:                                 # <array 7 of <array 6 of <array 9 of <array 4 of <array 5 of <bool>>>>>>
    .long    5
    .long    7
    .long    6
    .long    9
    .long    4
    .long    5
    .skip 7560








    # end of global data section
    #-----------------------------------------

    .end
##################################################
