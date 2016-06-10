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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 25 of <array 21 of <array 72 of <array 38 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 62 of <array 100 of <array 54 of <array 73 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, 20(%ebp)          
    movl    $99, %eax               #   2:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    call    ReadInt                 #   3:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 60 of <array 52 of <array 23 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f1_1_while_cond:
l_f1_5_while_cond:
    movl    $100, %eax              #   2:     if     100 >= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $58674, %eax            #   9:     add    t3 <- 58674, 62818
    movl    $62818, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t4 <- t3, 67728
    movl    $67728, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     if     t4 # 66077 goto 10_if_true
    movl    $66077, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 73 of <array 62 of <array 100 of <array 54 of <array 73 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 62 of <array 25 of <array 21 of <array 72 of <array 38 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <char> %ebp-27 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v1       <bool> %ebp-33 ]
    #   -89056860(%ebp)  89056824  [ $v2       <array 62 of <array 25 of <array 21 of <array 72 of <array 38 of <bool>>>>>> %ebp-89056860 ]
    #   -1873206084(%ebp)  1784149224  [ $v3       <array 73 of <array 62 of <array 100 of <array 54 of <array 73 of <bool>>>>>> %ebp-1873206084 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1873206072, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $468301518, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-89056860(%ebp)      # local array 'v2': 5 dimensions
    movl    $62,-89056856(%ebp)     #   dimension 1: 62 elements
    movl    $25,-89056852(%ebp)     #   dimension 2: 25 elements
    movl    $21,-89056848(%ebp)     #   dimension 3: 21 elements
    movl    $72,-89056844(%ebp)     #   dimension 4: 72 elements
    movl    $38,-89056840(%ebp)     #   dimension 5: 38 elements
    movl    $5,-1873206084(%ebp)    # local array 'v3': 5 dimensions
    movl    $73,-1873206080(%ebp)   #   dimension 1: 73 elements
    movl    $62,-1873206076(%ebp)   #   dimension 2: 62 elements
    movl    $100,-1873206072(%ebp)  #   dimension 3: 100 elements
    movl    $54,-1873206068(%ebp)   #   dimension 4: 54 elements
    movl    $73,-1873206064(%ebp)   #   dimension 5: 73 elements

    # function body
    jmp     l_f2_exit              
    movl    $99, %eax               #   1:     if     99 < 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $18535, %eax            #   4:     assign v0 <- 18535
    movl    %eax, -32(%ebp)        
    movl    $36896, %eax            #   5:     if     36896 > 9686 goto 7
    movl    $9686, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_7                 
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_8:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  13:     assign v1 <- t2
    movb    %al, -33(%ebp)         
    movl    $99, %eax               #  14:     param  3 <- 99
    pushl   %eax                   
    leal    -1873206084(%ebp), %eax #  15:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  2 <- t3
    pushl   %eax                   
    leal    -89056860(%ebp), %eax   #  17:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  1 <- t4
    pushl   %eax                   
    jmp     l_f2_12                 #  19:     goto   12
    jmp     l_f2_12                 #  20:     goto   12
    jmp     l_f2_13                 #  21:     goto   13
l_f2_12:
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_14                 #  24:     goto   14
l_f2_13:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f2_14:
    movzbl  -25(%ebp), %eax         #  28:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  29:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    jmp     l_f2_1                  #  30:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  33:     call   t7 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  34:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  35:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $1873206072, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1                #   2:     goto   1
l_test_1:
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
