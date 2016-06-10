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
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 2 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

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
    movl    $26995, %eax            #   0:     div    t3 <- 26995, 29465
    movl    $29465, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t4 <- t3, 75529
    movl    $75529, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    movl    $61789, %eax            #   4:     div    t5 <- 61789, 87295
    movl    $87295, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t5 > 23525 goto 2
    movl    $23525, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2                 
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #   9:     goto   4
l_f0_3:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f0_4:
    movzbl  -25(%ebp), %eax         #  13:     return t6
    jmp     l_f0_exit              
    movl    $19357, %eax            #  14:     assign v3 <- 19357
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 6 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $84984, %eax            #   4:     if     84984 <= 55786 goto 6_while_body
    movl    $55786, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    movl    $0, %eax                #   9:     if     0 = 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_13_while_cond:
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  20:     if     98 >= t3 goto 14_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  21:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  23:     goto   13_while_cond
l_f1_12:
l_f1_17_while_cond:
    movl    $1, %eax                #  26:     if     1 = 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  27:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  29:     goto   17_while_cond
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 2 of <array 7 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #   -1320(%ebp)  1284  [ $v1       <array 10 of <array 9 of <array 1 of <array 2 of <array 7 of <char>>>>>> %ebp-1320 ]
    #   -1324(%ebp)   4  [ $v2       <int> %ebp-1324 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1312, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $328, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1320(%ebp)          # local array 'v1': 5 dimensions
    movl    $10,-1316(%ebp)         #   dimension 1: 10 elements
    movl    $9,-1312(%ebp)          #   dimension 2: 9 elements
    movl    $1,-1308(%ebp)          #   dimension 3: 1 elements
    movl    $2,-1304(%ebp)          #   dimension 4: 2 elements
    movl    $7,-1300(%ebp)          #   dimension 5: 7 elements

    # function body
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $84644, %eax            #   1:     add    t4 <- 84644, 28913
    movl    $28913, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $70703, %eax            #   2:     if     70703 # t4 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $38564, %eax            #   5:     if     38564 < 91056 goto 6
    movl    $91056, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_8:
    movzbl  -21(%ebp), %eax         #  13:     param  1 <- t5
    pushl   %eax                   
    leal    -1320(%ebp), %eax       #  14:     &()    t6 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  16:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movl    $59772, %eax            #  17:     return 59772
    jmp     l_f2_exit              
    jmp     l_f2_11                 #  18:     goto   11
l_f2_11:
    jmp     l_f2_14                 #  20:     goto   14
l_f2_14:
    movl    $19799, %eax            #  22:     if     19799 >= 39684 goto 18_if_true
    movl    $39684, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  23:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  25:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_1                  #  28:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $2170, %eax             #  31:     mul    t8 <- 2170, 49711
    movl    $49711, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     assign v2 <- t8
    movl    %eax, -1324(%ebp)      

l_f2_exit:
    # epilogue
    addl    $1312, %esp             # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_1                #   4:     goto   1
l_test_3_if_false:
l_test_1:
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_test_exit            
    call    dummyINTfunc            #   9:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $72609, %eax            #  10:     mul    t2 <- 72609, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     assign v1 <- t2
    movl    %eax, v1               

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
