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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 17 of <array 38 of <array 87 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -17(%ebp)   1  [ $v3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
l_f0_1_if_true:
    call    ReadInt                 #   3:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
    movl    $0, %eax                #   6:     assign v3 <- 0
    movb    %al, -17(%ebp)         
    movl    $33022, %eax            #   7:     if     33022 # 90417 goto 10_if_true
    movl    $90417, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   8:     goto   11_if_false
l_f0_10_if_true:
    movl    $1, %eax                #  10:     assign v3 <- 1
    movb    %al, -17(%ebp)         
    movl    $24581, %eax            #  11:     assign v4 <- 24581
    movl    %eax, -24(%ebp)        
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 84 of <array 66 of <array 80 of <array 33 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 71 of <array 12 of <array 90 of <array 51 of <array 62 of <int>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $14141, %eax            #   1:     sub    t2 <- 14141, t1
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $70442, %eax            #   4:     if     70442 >= 78979 goto 3_while_body
    movl    $78979, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    movl    $97, %eax               #   7:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    movl    $0, %eax                #   9:     assign v2 <- 0
    movb    %al, -29(%ebp)         
    movl    $9416, %eax             #  10:     if     9416 # 56400 goto 8
    movl    $56400, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_8                 
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_10                 #  14:     goto   10
l_f1_9:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f1_10:
    movzbl  -21(%ebp), %eax         #  18:     assign v2 <- t3
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  19:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f1_2_while_cond       #  20:     goto   2_while_cond
l_f1_1:
    movl    $76042, %eax            #  22:     div    t5 <- 76042, 89564
    movl    $89564, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     return t5
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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 17 of <array 38 of <array 87 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 92 of <array 46 of <array 4 of <array 21 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 23 of <array 40 of <array 10 of <array 47 of <int>>>>>>> %ebp+12 ]
    #   -2023320(%ebp)  2023296  [ $v2       <array 9 of <array 17 of <array 38 of <array 87 of <array 4 of <char>>>>>> %ebp-2023320 ]
    #   -2023321(%ebp)   1  [ $v3       <bool> %ebp-2023321 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2023312, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $505828, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2023320(%ebp)       # local array 'v2': 5 dimensions
    movl    $9,-2023316(%ebp)       #   dimension 1: 9 elements
    movl    $17,-2023312(%ebp)      #   dimension 2: 17 elements
    movl    $38,-2023308(%ebp)      #   dimension 3: 38 elements
    movl    $87,-2023304(%ebp)      #   dimension 4: 87 elements
    movl    $4,-2023300(%ebp)       #   dimension 5: 4 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $100, %eax              #   2:     if     100 # 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $99, %eax               #   5:     param  2 <- 99
    pushl   %eax                   
    movl    $99, %eax               #   6:     param  1 <- 99
    pushl   %eax                   
    leal    -2023320(%ebp), %eax    #   7:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   9:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  10:     if     98 < 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  11:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #  13:     goto   6
l_f2_8_if_false:
l_f2_6:
l_f2_11_while_cond:
    movl    $100, %eax              #  17:     if     100 <= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  18:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  20:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_2_while_cond       #  22:     goto   2_while_cond
l_f2_1:
    movl    $0, %eax                #  24:     assign v3 <- 0
    movb    %al, -2023321(%ebp)    

l_f2_exit:
    # epilogue
    addl    $2023312, %esp          # remove locals
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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    WriteLn                 #   7:     call   WriteLn
    call    WriteLn                 #   8:     call   WriteLn

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
