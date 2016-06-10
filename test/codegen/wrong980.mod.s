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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 3 of <array 10 of <char>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #   1:     if     1 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $1, %eax                #   5:     assign v2 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $95952, %eax            #  10:     sub    t3 <- 95952, 98169
    movl    $98169, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t4 <- t3, 20302
    movl    $20302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 3 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 9 of <array 8 of <array 6 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -26(%ebp)   1  [ $v2       <bool> %ebp-26 ]
    #   -2480(%ebp)  2454  [ $v3       <array 9 of <array 9 of <array 1 of <array 3 of <array 10 of <char>>>>>> %ebp-2480 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2468, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $617, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2480(%ebp)          # local array 'v3': 5 dimensions
    movl    $9,-2476(%ebp)          #   dimension 1: 9 elements
    movl    $9,-2472(%ebp)          #   dimension 2: 9 elements
    movl    $1,-2468(%ebp)          #   dimension 3: 1 elements
    movl    $3,-2464(%ebp)          #   dimension 4: 3 elements
    movl    $10,-2460(%ebp)         #   dimension 5: 10 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $0, %eax                #   2:     return 0
    jmp     l_f1_exit              
    movl    $97085, %eax            #   3:     if     97085 > 78483 goto 5
    movl    $78483, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  11:     return t3
    jmp     l_f1_exit              
    movl    $0, %eax                #  12:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  15:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    leal    -2480(%ebp), %eax       #  16:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  18:     call   t6 <- f0
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     if     t6 <= 63962 goto 12
    movl    $63962, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12                
    jmp     l_f1_13                 #  20:     goto   13
l_f1_12:
    movl    $1, %eax                #  22:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_14                 #  23:     goto   14
l_f1_13:
    movl    $0, %eax                #  25:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_14:
    movzbl  -25(%ebp), %eax         #  27:     assign v2 <- t7
    movb    %al, -26(%ebp)         

l_f1_exit:
    # epilogue
    addl    $2468, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 3 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 5 of <array 7 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 9 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -2480(%ebp)  2454  [ $v4       <array 9 of <array 9 of <array 1 of <array 3 of <array 10 of <char>>>>>> %ebp-2480 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2468, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $617, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2480(%ebp)          # local array 'v4': 5 dimensions
    movl    $9,-2476(%ebp)          #   dimension 1: 9 elements
    movl    $9,-2472(%ebp)          #   dimension 2: 9 elements
    movl    $1,-2468(%ebp)          #   dimension 3: 1 elements
    movl    $3,-2464(%ebp)          #   dimension 4: 3 elements
    movl    $10,-2460(%ebp)         #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    movl    $4910, %eax             #   1:     if     4910 < 63419 goto 2_while_body
    movl    $63419, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   7:     if     97 = t3 goto 10
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #   8:     goto   11
l_f2_10:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  11:     goto   12
l_f2_11:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  15:     if     t4 # 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_6                 
    jmp     l_f2_7                  #  16:     goto   7
l_f2_6:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_8                  #  19:     goto   8
l_f2_7:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_8:
    movzbl  -15(%ebp), %eax         #  23:     return t5
    jmp     l_f2_exit              
    leal    -2480(%ebp), %eax       #  24:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  26:     call   t7 <- f0
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $2468, %esp             # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
l_test_2_while_cond:
l_test_5_while_cond:
    movl    $55744, %eax            #   3:     if     55744 >= 99897 goto 6_while_body
    movl    $99897, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
l_test_11_while_cond:
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     if     t1 # t2 goto 12_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  15:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_18_while_cond:
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  22:     goto   18_while_cond
    jmp     l_test_14               #  23:     goto   14
l_test_16_if_false:
l_test_14:

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
