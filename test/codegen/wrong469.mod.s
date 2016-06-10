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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 5 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 3 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 10 of <array 7 of <array 6 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 2 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v4       <char> %ebp-26 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v4 <- t1
    movb    %al, -26(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_1                  #   3:     goto   1
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
    jmp     l_f0_7                  #   5:     goto   7
l_f0_7:
l_f0_11_while_cond:
    movl    $96967, %eax            #   8:     if     96967 > 6047 goto 12_while_body
    movl    $6047, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_4                  #  13:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_2_while_cond       #  16:     goto   2_while_cond
l_f0_1:
    movl    $17398, %eax            #  18:     div    t2 <- 17398, 34757
    movl    $34757, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     div    t3 <- t2, 41443
    movl    $41443, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     if     t3 >= 88813 goto 15
    movl    $88813, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_15                
    jmp     l_f0_16                 #  21:     goto   16
l_f0_15:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_17                 #  24:     goto   17
l_f0_16:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_17:
    movzbl  -25(%ebp), %eax         #  28:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 6 of <array 6 of <array 5 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t11      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t12      <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 2 of <array 8 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 10 of <array 7 of <array 6 of <array 9 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 3 of <array 6 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 5 of <array 9 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 2 of <array 8 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <ptr(4) to <array 4 of <array 10 of <array 7 of <array 6 of <array 9 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 3 of <array 6 of <int>>>>>>> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 10 of <array 4 of <array 2 of <char>>>>>>> %ebp+8 ]
    #   -1700(%ebp)  1644  [ $v1       <array 1 of <array 6 of <array 6 of <array 5 of <array 9 of <bool>>>>>> %ebp-1700 ]
    #   -26924(%ebp)  25224  [ $v2       <array 5 of <array 10 of <array 7 of <array 3 of <array 6 of <int>>>>>> %ebp-26924 ]
    #   -42068(%ebp)  15144  [ $v3       <array 4 of <array 10 of <array 7 of <array 6 of <array 9 of <char>>>>>> %ebp-42068 ]
    #   -42668(%ebp)  600  [ $v4       <array 9 of <array 1 of <array 4 of <array 2 of <array 8 of <bool>>>>>> %ebp-42668 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $42656, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10664, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1700(%ebp)          # local array 'v1': 5 dimensions
    movl    $1,-1696(%ebp)          #   dimension 1: 1 elements
    movl    $6,-1692(%ebp)          #   dimension 2: 6 elements
    movl    $6,-1688(%ebp)          #   dimension 3: 6 elements
    movl    $5,-1684(%ebp)          #   dimension 4: 5 elements
    movl    $9,-1680(%ebp)          #   dimension 5: 9 elements
    movl    $5,-26924(%ebp)         # local array 'v2': 5 dimensions
    movl    $5,-26920(%ebp)         #   dimension 1: 5 elements
    movl    $10,-26916(%ebp)        #   dimension 2: 10 elements
    movl    $7,-26912(%ebp)         #   dimension 3: 7 elements
    movl    $3,-26908(%ebp)         #   dimension 4: 3 elements
    movl    $6,-26904(%ebp)         #   dimension 5: 6 elements
    movl    $5,-42068(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-42064(%ebp)         #   dimension 1: 4 elements
    movl    $10,-42060(%ebp)        #   dimension 2: 10 elements
    movl    $7,-42056(%ebp)         #   dimension 3: 7 elements
    movl    $6,-42052(%ebp)         #   dimension 4: 6 elements
    movl    $9,-42048(%ebp)         #   dimension 5: 9 elements
    movl    $5,-42668(%ebp)         # local array 'v4': 5 dimensions
    movl    $9,-42664(%ebp)         #   dimension 1: 9 elements
    movl    $1,-42660(%ebp)         #   dimension 2: 1 elements
    movl    $4,-42656(%ebp)         #   dimension 3: 4 elements
    movl    $2,-42652(%ebp)         #   dimension 4: 2 elements
    movl    $8,-42648(%ebp)         #   dimension 5: 8 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    leal    -42668(%ebp), %eax      #   4:     &()    t2 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  3 <- t2
    pushl   %eax                   
    leal    -42068(%ebp), %eax      #   6:     &()    t3 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  2 <- t3
    pushl   %eax                   
    leal    -26924(%ebp), %eax      #   8:     &()    t4 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     param  1 <- t4
    pushl   %eax                   
    leal    -1700(%ebp), %eax       #  10:     &()    t5 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  12:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    leal    -42668(%ebp), %eax      #  16:     &()    t7 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     param  3 <- t7
    pushl   %eax                   
    leal    -42068(%ebp), %eax      #  18:     &()    t8 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  19:     param  2 <- t8
    pushl   %eax                   
    leal    -26924(%ebp), %eax      #  20:     &()    t9 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  21:     param  1 <- t9
    pushl   %eax                   
    leal    -1700(%ebp), %eax       #  22:     &()    t10 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  24:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  25:     if     t11 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  26:     goto   6_if_false
l_f1_5_if_true:
    movl    $98, %eax               #  28:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_4                  #  29:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyCHARfunc           #  32:     call   t12 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  33:     return t12
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $42656, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 4 of <array 6 of <array 2 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 7 of <array 10 of <array 7 of <int>>>>>>> %ebp+16 ]
    #    -16(%ebp)   4  [ $v3       <int> %ebp-16 ]

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
    movl    $99, %eax               #   0:     if     99 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    movl    $49148, %eax            #   8:     assign v3 <- 49148
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $15624, %eax            #   2:     assign v0 <- 15624
    movl    %eax, v0               
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
