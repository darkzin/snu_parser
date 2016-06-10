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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t7       <char> %ebp-31 ]
    #    -32(%ebp)   1  [ $v0       <bool> %ebp-32 ]

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
    movl    $33774, %eax            #   0:     add    t1 <- 33774, 45957
    movl    $45957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 61598
    movl    $61598, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 96602
    movl    $96602, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t4 <- t3, 57436
    movl    $57436, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $22505, %eax            #   4:     if     22505 < t4 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   5:     goto   2
l_f0_1:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_3                  #   8:     goto   3
l_f0_2:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f0_3:
    movzbl  -29(%ebp), %eax         #  12:     assign v0 <- t5
    movb    %al, -32(%ebp)         
    call    dummyCHARfunc           #  13:     call   t6 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    call    dummyCHARfunc           #  14:     call   t7 <- dummyCHARfunc
    movb    %al, -31(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 83 of <array 17 of <array 90 of <array 89 of <array 12 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -23(%ebp)   1  [ $v2       <bool> %ebp-23 ]

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
    movl    $95212, %eax            #   0:     mul    t1 <- 95212, 61293
    movl    $61293, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 93181
    movl    $93181, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $28256, %eax            #   2:     if     28256 # t2 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   6:     goto   4
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_f1_10_while_cond:
    movl    $41380, %eax            #  12:     if     41380 >= 88001 goto 11_while_body
    movl    $88001, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_17_while_cond:
    movl    $99, %eax               #  24:     if     99 = 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_while_body:
    movl    $1, %eax                #  27:     assign v2 <- 1
    movb    %al, -23(%ebp)         
    movl    $99, %eax               #  28:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  29:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
l_f1_24_while_cond:
    movl    $100, %eax              #  31:     if     100 # 97 goto 25_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_25_while_body     
    jmp     l_f1_23                 #  32:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  34:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_17_while_cond      #  36:     goto   17_while_cond
l_f1_16:
l_f1_28_while_cond:
    movl    $36185, %eax            #  39:     if     36185 # 94504 goto 29_while_body
    movl    $94504, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_29_while_body     
    jmp     l_f1_27                 #  40:     goto   27
l_f1_29_while_body:
    movl    $98, %eax               #  42:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f1_28_while_cond      #  43:     goto   28_while_cond
l_f1_27:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 83 of <array 62 of <array 38 of <array 6 of <array 38 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 91 of <array 65 of <array 81 of <array 75 of <bool>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    call    dummyINTfunc            #   2:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   4:     goto   2_while_cond
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
    movl    $40482, %eax            #   7:     assign v0 <- 40482
    movl    %eax, v0               
    movl    $98, %eax               #   8:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $21961, %eax            #  11:     param  0 <- 21961
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
